# Report on the GDAL (and PROJ/GEOS) stack inside the CRAN macOS binary
# packages. Run on a GitHub macOS runner after installing the CRAN binaries.
#
# Usage: Rscript scripts/report.R <outdir> <label>
# Writes <outdir>/report-<label>.md and <outdir>/summary-<label>.tsv

args <- commandArgs(trailingOnly = TRUE)
outdir <- if (length(args) >= 1) args[1] else "out"
label  <- if (length(args) >= 2) args[2] else paste(R.version$arch)
dir.create(outdir, showWarnings = FALSE, recursive = TRUE)

pkgs <- c("sf", "terra", "gdalraster", "vapour")

## ---- helpers ---------------------------------------------------------------
ascii <- function(x) iconv(as.character(x), "", "ASCII", sub = "?")
try1 <- function(expr) tryCatch(expr, error = function(e) NA_character_)
has <- function(p) requireNamespace(p, quietly = TRUE)
md_table <- function(df) {
  df[] <- lapply(df, function(x) { x <- ascii(x); x[is.na(x)] <- ""; gsub("\\|", "/", x) })
  c(paste0("| ", paste(names(df), collapse = " | "), " |"),
    paste0("|", paste(rep("---", ncol(df)), collapse = "|"), "|"),
    apply(df, 1, function(r) paste0("| ", paste(r, collapse = " | "), " |")))
}
yn <- function(x) ifelse(is.na(x), "?", ifelse(x, "yes", "no"))
sh <- function(cmd) try1(paste(system(cmd, intern = TRUE), collapse = " "))

out <- character()
add <- function(...) out <<- c(out, ...)

## ---- environment -----------------------------------------------------------
macos <- sh("sw_vers -productVersion")
xcode <- sh("xcodebuild -version 2>/dev/null | head -1")
add(sprintf("# CRAN macOS GDAL report: %s", label), "",
    sprintf("Generated %s UTC by `scripts/report.R`.", format(Sys.time(), "%Y-%m-%d %H:%M", tz = "UTC")), "",
    "## Environment", "",
    md_table(data.frame(
      item = c("macOS", "machine", "Xcode", "R", "R platform", "CRAN repo", "runner image"),
      value = c(macos, sh("uname -m"), xcode, R.version.string, R.version$platform,
                getOption("repos")[["CRAN"]],
                paste(Sys.getenv("ImageOS"), Sys.getenv("ImageVersion"))))), "")

## ---- packages and linked libraries ----------------------------------------
lib <- list()
pkgrow <- function(p) {
  if (!has(p)) return(data.frame(package = p, version = "not installed", built = "",
                                 GDAL = NA, PROJ = NA, GEOS = NA))
  d <- packageDescription(p)
  g <- pr <- ge <- NA_character_
  if (p == "sf") {
    v <- sf::sf_extSoftVersion()
    g <- v[["GDAL"]]; pr <- v[["PROJ"]]; ge <- v[["GEOS"]]
  } else if (p == "terra") {
    v <- terra::gdal(lib = "all")
    g <- v[["gdal"]]; pr <- v[["proj"]]; ge <- v[["geos"]]
  } else if (p == "gdalraster") {
    g  <- try1(gdalraster::gdal_version()[[4]])
    pr <- try1({ x <- gdalraster::proj_version(); paste(x$major, x$minor, x$patch, sep = ".") })
    ge <- try1({ x <- gdalraster::geos_version(); paste(x$major, x$minor, x$patch, sep = ".") })
  } else if (p == "vapour") {
    g <- try1(vapour::vapour_gdal_version())
    g <- sub("^GDAL ", "", sub(",.*", "", g))
  }
  lib[[p]] <<- c(GDAL = g, PROJ = pr, GEOS = ge)
  data.frame(package = p, version = d$Version, built = d$Built, GDAL = g, PROJ = pr, GEOS = ge)
}
ptab <- do.call(rbind, lapply(pkgs, pkgrow))
add("## Packages and the libraries they link", "",
    "Each CRAN binary carries its own static copy of the libraries; they can differ.", "",
    md_table(ptab), "")

if (has("gdalraster")) {
  gv <- try1(gdalraster::gdal_version())
  add("GDAL release string (gdalraster): `", ascii(gv[1]), "`", "")
}

## ---- data paths and config -------------------------------------------------
if (has("sf")) {
  add("## PROJ / GDAL data", "",
      md_table(data.frame(
        item = c("sf PROJ search paths", "sf PROJ network enabled", "PROJ_LIB / PROJ_DATA env",
                 "GDAL_DATA env", "EPSG:7844 resolves", "4326 -> 3031 transform finite"),
        value = c(paste(try1(sf::sf_proj_search_paths()), collapse = " ; "),
                  try1(as.character(sf::sf_proj_network())),
                  paste(Sys.getenv("PROJ_LIB"), Sys.getenv("PROJ_DATA")),
                  Sys.getenv("GDAL_DATA"),
                  try1(as.character(!is.na(sf::st_crs("EPSG:7844")))),
                  try1({
                    pt <- sf::st_transform(sf::st_sfc(sf::st_point(c(147, -75)), crs = 4326), 3031)
                    as.character(all(is.finite(sf::st_coordinates(pt))))
                  })))), "")
}

## ---- drivers ---------------------------------------------------------------
drv <- NULL
if (has("terra")) {
  drv <- terra::gdal(drivers = TRUE)
}
key <- c("GTiff", "COG", "VRT", "netCDF", "HDF5", "HDF4", "Zarr", "GRIB", "JP2OpenJPEG",
         "WEBP", "PNG", "JPEG", "KEA", "GPKG", "OpenFileGDB", "FileGDB", "FlatGeobuf",
         "Parquet", "Arrow", "ADBC", "PostgreSQL", "PostGISRaster", "SQLite", "LIBKML",
         "KML", "GeoJSON", "GML", "WMS", "WMTS", "STACIT", "STACTA", "PMTiles", "MBTiles",
         "MVT", "PDF", "MRF", "ESRIC", "GTI", "XLSX", "ODS", "MiraMonVector", "AVIF", "HEIF",
         "JPEGXL", "BAG", "EXR", "LERC")
if (!is.null(drv)) {
  drv$name <- ascii(drv$name)
  drv$raster <- as.logical(drv$raster); drv$vector <- as.logical(drv$vector)
  drv$vsi <- as.logical(drv$vsi)
  add("## Drivers", "",
      sprintf("%d drivers registered (terra): %d raster, %d vector.", nrow(drv),
              sum(drv$raster), sum(drv$vector)), "",
      "### Key drivers", "")
  pres <- function(n) {
    i <- match(n, drv$name)
    if (is.na(i)) return(c(present = "no", raster = "", vector = "", can = "", vsi = ""))
    c(present = "yes", raster = yn(drv$raster[i]), vector = yn(drv$vector[i]),
      can = drv$can[i], vsi = yn(drv$vsi[i]))
  }
  kt <- data.frame(driver = key, t(vapply(key, pres, character(5))), row.names = NULL)
  if (has("gdalraster")) {
    gf <- try1(gdalraster::gdal_formats())
    if (is.data.frame(gf)) kt$gdalraster <- ifelse(key %in% gf$short_name, "yes", "no")
  }
  if (has("vapour")) {
    vd <- try1(vapour::vapour_all_drivers())
    if (is.list(vd)) kt$vapour <- ifelse(key %in% vd$driver, "yes", "no")
  }
  add(md_table(kt), "", "### All drivers (terra)", "", "<details><summary>expand</summary>", "",
      md_table(drv[, intersect(c("name", "raster", "vector", "can", "vsi", "long.name"), names(drv))]),
      "", "</details>", "")
}

## ---- capability probes -----------------------------------------------------
probe <- function(what, expr) {
  t0 <- Sys.time()
  r <- tryCatch({ v <- expr; list(ok = TRUE, msg = as.character(v)[1]) },
                error = function(e) list(ok = FALSE, msg = conditionMessage(e)))
  data.frame(probe = what, ok = yn(r$ok), detail = substr(ascii(gsub("\\s+", " ", r$msg)), 1, 120),
             seconds = round(as.numeric(difftime(Sys.time(), t0, units = "secs")), 2))
}
probes <- list()
td <- tempfile(); dir.create(td)
if (has("terra")) {
  url <- "/vsicurl/https://raw.githubusercontent.com/OSGeo/gdal/master/autotest/gcore/data/byte.tif"
  probes[["vsicurl"]] <- probe("raster read via /vsicurl/ (GDAL autotest byte.tif)",
                               sum(terra::values(terra::rast(url))))
  r <- terra::rast(nrows = 64, ncols = 64, xmin = 0, xmax = 64, ymin = 0, ymax = 64,
                   crs = "EPSG:3031", vals = as.numeric(1:4096))
  rtrip <- function(ft, ext, ...) {
    probe(sprintf("raster write+read %s", ft), {
      f <- file.path(td, paste0("r_", ft, ext))
      terra::writeRaster(r, f, filetype = ft, overwrite = TRUE, ...)
      sum(terra::values(terra::rast(f)))
    })
  }
  probes[["gtiff"]] <- rtrip("GTiff", ".tif")
  probes[["cog"]]   <- rtrip("COG", ".tif", gdal = "COMPRESS=DEFLATE")
  probes[["nc"]]    <- rtrip("netCDF", ".nc")
  probes[["zarr"]]  <- rtrip("Zarr", ".zarr")
  probes[["gpkgr"]] <- rtrip("GPKG", ".gpkg", datatype = "INT2U")
  probes[["jp2"]]   <- rtrip("JP2OpenJPEG", ".jp2", datatype = "INT2U")
}
if (has("sf")) {
  nc <- sf::st_read(system.file("shape/nc.shp", package = "sf"), quiet = TRUE)
  vtrip <- function(drv, ext) {
    probe(sprintf("vector write+read %s", drv), {
      f <- file.path(td, paste0("v_", drv, ext))
      sf::st_write(nc, f, driver = drv, quiet = TRUE, delete_dsn = TRUE)
      nrow(sf::st_read(f, quiet = TRUE))
    })
  }
  for (d in c("GPKG", "FlatGeobuf", "GeoJSON", "Parquet", "Arrow", "OpenFileGDB"))
    probes[[d]] <- vtrip(d, c(GPKG = ".gpkg", FlatGeobuf = ".fgb", GeoJSON = ".geojson",
                              Parquet = ".parquet", Arrow = ".arrow", OpenFileGDB = ".gdb")[[d]])
}
if (length(probes)) {
  add("## Capability probes", "", md_table(do.call(rbind, probes)), "")
}

## ---- CRAN macOS recipe libraries available --------------------------------
recipe_dir <- if (R.version$arch %in% c("aarch64", "arm64")) {
  "https://mac.r-project.org/bin/darwin20/arm64/"
} else {
  "https://mac.r-project.org/bin/darwin20/x86_64/"
}
libs <- c("gdal", "proj", "geos", "sqlite3", "tiff", "netcdf", "hdf5", "openjpeg",
          "libwebp", "zstd", "xz", "libdeflate", "lerc", "expat", "pcre2", "freexl", "hdf4")
listing <- try1(readLines(recipe_dir, warn = FALSE))
newest <- setNames(rep(NA_character_, length(libs)), libs)
if (!all(is.na(listing))) {
  files <- unique(unlist(regmatches(listing, gregexpr("[A-Za-z0-9_+.-]+-darwin[^\"<>]*\\.tar\\.xz", listing))))
  for (l in libs) {
    v <- sub(sprintf("^%s-([0-9][0-9A-Za-z.]*)-darwin.*", l), "\\1",
             grep(sprintf("^%s-[0-9]", l), files, value = TRUE))
    if (length(v)) newest[[l]] <- v[order(numeric_version(gsub("[^0-9.]", "", v), strict = FALSE))][length(v)]
  }
  add("## Recipe libraries published for CRAN macOS builds", "",
      sprintf("Newest tarball of each library in <%s>. This is what is *available* to", recipe_dir),
      "CRAN's macOS builders, not necessarily what a given package binary was linked against.", "",
      md_table(data.frame(library = libs, newest = newest)), "")
}

## ---- outputs ---------------------------------------------------------------
f <- file.path(outdir, sprintf("report-%s.md", label))
writeLines(ascii(out), f, useBytes = TRUE)

g <- function(p, k) if (!is.null(lib[[p]])) lib[[p]][[k]] else NA
summary <- data.frame(
  date = format(Sys.Date()), label = label, macos = macos, R = paste(R.version$major, R.version$minor, sep = "."),
  sf = if (has("sf")) as.character(packageVersion("sf")) else NA,
  gdal_sf = g("sf", "GDAL"), gdal_terra = g("terra", "GDAL"),
  gdal_gdalraster = g("gdalraster", "GDAL"), gdal_vapour = g("vapour", "GDAL"),
  proj_sf = g("sf", "PROJ"), geos_sf = g("sf", "GEOS"),
  n_drivers = if (is.null(drv)) NA else nrow(drv),
  recipe_gdal = newest[["gdal"]], recipe_proj = newest[["proj"]], recipe_geos = newest[["geos"]])
summary[] <- lapply(summary, ascii)
write.table(summary, file.path(outdir, sprintf("summary-%s.tsv", label)),
            sep = "\t", quote = FALSE, row.names = FALSE, na = "")
cat(out, sep = "\n")
