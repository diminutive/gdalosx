# CRAN macOS GDAL report: x86_64

Generated 2026-10-20 14:11 UTC by `scripts/report.R`.

## Environment

| item | value |
|---|---|
| macOS | 15.7.9 |
| machine | x86_64 |
| Xcode | Xcode 16.4 |
| R | R version 4.6.1 (2026-06-24) |
| R platform | x86_64-apple-darwin20 |
| CRAN repo | https://cran.rstudio.com |
| runner image | macos15 20260824.0482.1 |

## Packages and the libraries they link

Each CRAN binary carries its own static copy of the libraries; they can differ.

| package | version | built | GDAL | PROJ | GEOS |
|---|---|---|---|---|---|
| sf | 1.1-3 | R 4.6.1; x86_64-apple-darwin20; 2026-09-11 09:27:28 UTC; unix | 3.8.5 | 9.5.1 | 3.14.1 |
| terra | 1.9-50 | R 4.6.1; x86_64-apple-darwin20; 2026-09-08 17:37:17 UTC; unix | 3.8.5 | 9.5.1 | 3.14.1 |
| gdalraster | 2.7.0 | R 4.6.1; x86_64-apple-darwin20; 2026-09-22 20:26:15 UTC; unix | 3.8.5 | 9.5.1 | 3.14.1 |
| vapour | 0.16.0 | R 4.6.0; x86_64-apple-darwin20; 2026-04-28 00:30:01 UTC; unix | 3.8.5 |  |  |

GDAL release string (gdalraster): `
GDAL 3.8.5, released 2024/04/02
`

## PROJ / GDAL data

| item | value |
|---|---|
| sf PROJ search paths | /Users/runner/work/_temp/Library/sf/proj |
| sf PROJ network enabled | FALSE |
| PROJ_LIB / PROJ_DATA env | /Users/runner/work/_temp/Library/vapour/proj  |
| GDAL_DATA env | /Users/runner/work/_temp/Library/vapour/gdal |
| EPSG:7844 resolves | TRUE |
| 4326 -> 3031 transform finite | TRUE |

## Drivers

206 drivers registered (terra): 146 raster, 73 vector.

### Key drivers

| driver | present | raster | vector | can | vsi | gdalraster | vapour |
|---|---|---|---|---|---|---|---|
| GTiff | yes | yes | no | read/write | yes | yes | yes |
| COG | yes | yes | no | read/write | yes | yes | yes |
| VRT | yes | yes | no | read/write | yes | yes | yes |
| netCDF | yes | yes | yes | read/write | no | yes | yes |
| HDF5 | yes | yes | no | read | yes | yes | yes |
| HDF4 | yes | yes | no | read | no | yes | yes |
| Zarr | yes | yes | no | read/write | yes | yes | yes |
| GRIB | yes | yes | no | read/write | yes | yes | yes |
| JP2OpenJPEG | yes | yes | yes | read/write | yes | yes | yes |
| WEBP | yes | yes | no | read/write | yes | yes | yes |
| PNG | yes | yes | no | read/write | yes | yes | yes |
| JPEG | yes | yes | no | read/write | yes | yes | yes |
| KEA | no |  |  |  |  | no | no |
| GPKG | yes | yes | yes | read/write | yes | yes | yes |
| OpenFileGDB | yes | yes | yes | read/write | yes | yes | yes |
| FileGDB | no |  |  |  |  | no | no |
| FlatGeobuf | yes | no | yes | read/write | yes | yes | yes |
| Parquet | no |  |  |  |  | no | no |
| Arrow | no |  |  |  |  | no | no |
| ADBC | no |  |  |  |  | no | no |
| PostgreSQL | yes | no | yes | read/write | no | yes | yes |
| PostGISRaster | yes | yes | no | read/write | no | yes | yes |
| SQLite | yes | no | yes | read/write | yes | yes | yes |
| LIBKML | no |  |  |  |  | no | no |
| KML | yes | no | yes | read/write | yes | yes | yes |
| GeoJSON | yes | no | yes | read/write | yes | yes | yes |
| GML | yes | no | yes | read/write | yes | yes | yes |
| WMS | yes | yes | no | read/write | yes | yes | yes |
| WMTS | yes | yes | no | read/write | yes | yes | yes |
| STACIT | yes | yes | no | read | yes | yes | yes |
| STACTA | yes | yes | no | read | yes | yes | yes |
| PMTiles | yes | no | yes | read/write | yes | yes | yes |
| MBTiles | yes | yes | yes | read/write | yes | yes | yes |
| MVT | yes | no | yes | read/write | yes | yes | yes |
| PDF | yes | yes | yes | read/write | no | yes | yes |
| MRF | yes | yes | no | read/write | yes | yes | yes |
| ESRIC | yes | yes | no | read | yes | yes | yes |
| GTI | no |  |  |  |  | no | no |
| XLSX | yes | no | yes | read/write | yes | yes | yes |
| ODS | yes | no | yes | read/write | yes | yes | yes |
| MiraMonVector | no |  |  |  |  | no | no |
| AVIF | no |  |  |  |  | no | no |
| HEIF | no |  |  |  |  | no | no |
| JPEGXL | no |  |  |  |  | no | no |
| BAG | yes | yes | yes | read/write | yes | yes | yes |
| EXR | no |  |  |  |  | no | no |
| LERC | no |  |  |  |  | no | no |

### All drivers (terra)

<details><summary>expand</summary>

| name | raster | vector | can | vsi | long.name |
|---|---|---|---|---|---|
| AAIGrid | TRUE | FALSE | read/write | TRUE | Arc/Info ASCII Grid |
| ACE2 | TRUE | FALSE | read | TRUE | ACE2 |
| ADRG | TRUE | FALSE | read/write | TRUE | ARC Digitized Raster Graphics |
| AIG | TRUE | FALSE | read | TRUE | Arc/Info Binary Grid |
| AirSAR | TRUE | FALSE | read | TRUE | AirSAR Polarimetric Image |
| AmigoCloud | FALSE | TRUE | read/write | FALSE | AmigoCloud |
| ARG | TRUE | FALSE | read/write | TRUE | Azavea Raster Grid format |
| AVCBin | FALSE | TRUE | read | TRUE | Arc/Info Binary Coverage |
| AVCE00 | FALSE | TRUE | read | TRUE | Arc/Info E00 (ASCII) Coverage |
| BAG | TRUE | TRUE | read/write | TRUE | Bathymetry Attributed Grid |
| BIGGIF | TRUE | FALSE | read | TRUE | Graphics Interchange Format (.gif) |
| BLX | TRUE | FALSE | read/write | TRUE | Magellan topo (.blx) |
| BMP | TRUE | FALSE | read/write | TRUE | MS Windows Device Independent Bitmap |
| BSB | TRUE | FALSE | read | TRUE | Maptech BSB Nautical Charts |
| BT | TRUE | FALSE | read/write | TRUE | VTP .bt (Binary Terrain) 1.3 Format |
| BYN | TRUE | FALSE | read/write | TRUE | Natural Resources Canada's Geoid |
| CAD | TRUE | TRUE | read | TRUE | AutoCAD Driver |
| CALS | TRUE | FALSE | read/write | TRUE | CALS (Type 1) |
| Carto | FALSE | TRUE | read/write | FALSE | Carto |
| CEOS | TRUE | FALSE | read | TRUE | CEOS Image |
| COASP | TRUE | FALSE | read | FALSE | DRDC COASP SAR Processor Raster |
| COG | TRUE | FALSE | read/write | TRUE | Cloud optimized GeoTIFF generator |
| COSAR | TRUE | FALSE | read | TRUE | COSAR Annotated Binary Matrix (TerraSAR-X) |
| CPG | TRUE | FALSE | read | TRUE | Convair PolGASP |
| CSV | FALSE | TRUE | read/write | TRUE | Comma Separated Value (.csv) |
| CSW | FALSE | TRUE | read | FALSE | OGC CSW (Catalog  Service for the Web) |
| CTable2 | TRUE | FALSE | read/write | TRUE | CTable2 Datum Grid Shift |
| CTG | TRUE | FALSE | read | TRUE | USGS LULC Composite Theme Grid |
| DAAS | TRUE | FALSE | read | FALSE | Airbus DS Intelligence Data As A Service driver |
| DERIVED | TRUE | FALSE | read | FALSE | Derived datasets using VRT pixel functions |
| DGN | FALSE | TRUE | read/write | TRUE | Microstation DGN |
| DIMAP | TRUE | FALSE | read | TRUE | SPOT DIMAP |
| DIPEx | TRUE | FALSE | read | TRUE | DIPEx |
| DOQ1 | TRUE | FALSE | read | TRUE | USGS DOQ (Old Style) |
| DOQ2 | TRUE | FALSE | read | TRUE | USGS DOQ (New Style) |
| DTED | TRUE | FALSE | read/write | TRUE | DTED Elevation Raster |
| DXF | FALSE | TRUE | read/write | TRUE | AutoCAD DXF |
| ECRGTOC | TRUE | FALSE | read | TRUE | ECRG TOC format |
| EDIGEO | FALSE | TRUE | read | TRUE | French EDIGEO exchange format |
| EEDA | FALSE | TRUE | read | FALSE | Earth Engine Data API |
| EEDAI | TRUE | FALSE | read | FALSE | Earth Engine Data API Image |
| EHdr | TRUE | FALSE | read/write | TRUE | ESRI .hdr Labelled |
| EIR | TRUE | FALSE | read | TRUE | Erdas Imagine Raw |
| ELAS | TRUE | FALSE | read/write | TRUE | ELAS |
| Elasticsearch | FALSE | TRUE | read/write | FALSE | Elastic Search |
| ENVI | TRUE | FALSE | read/write | TRUE | ENVI .hdr Labelled |
| ERS | TRUE | FALSE | read/write | TRUE | ERMapper .ers Labelled |
| ESAT | TRUE | FALSE | read | TRUE | Envisat Image Format |
| ESRI Shapefile | FALSE | TRUE | read/write | TRUE | ESRI Shapefile |
| ESRIC | TRUE | FALSE | read | TRUE | Esri Compact Cache |
| ESRIJSON | FALSE | TRUE | read | TRUE | ESRIJSON |
| FAST | TRUE | FALSE | read | TRUE | EOSAT FAST Format |
| FIT | TRUE | FALSE | read/write | TRUE | FIT Image |
| FlatGeobuf | FALSE | TRUE | read/write | TRUE | FlatGeobuf |
| GenBin | TRUE | FALSE | read | TRUE | Generic Binary (.hdr Labelled) |
| Geoconcept | FALSE | TRUE | read/write | TRUE | Geoconcept |
| GeoJSON | FALSE | TRUE | read/write | TRUE | GeoJSON |
| GeoJSONSeq | FALSE | TRUE | read/write | TRUE | GeoJSON Sequence |
| GeoRSS | FALSE | TRUE | read/write | TRUE | GeoRSS |
| GFF | TRUE | FALSE | read | TRUE | Ground-based SAR Applications Testbed File Format (.gff) |
| GIF | TRUE | FALSE | read/write | TRUE | Graphics Interchange Format (.gif) |
| GML | FALSE | TRUE | read/write | TRUE | Geography Markup Language (GML) |
| GNMDatabase | FALSE | FALSE | read/write | FALSE | Geographic Network generic DB based model |
| GNMFile | FALSE | FALSE | read/write | FALSE | Geographic Network generic file based model |
| GPKG | TRUE | TRUE | read/write | TRUE | GeoPackage |
| GPSBabel | FALSE | TRUE | read/write | FALSE | GPSBabel |
| GPX | FALSE | TRUE | read/write | TRUE | GPX |
| GRASSASCIIGrid | TRUE | FALSE | read | TRUE | GRASS ASCII Grid |
| GRIB | TRUE | FALSE | read/write | TRUE | GRIdded Binary (.grb, .grb2) |
| GS7BG | TRUE | FALSE | read/write | TRUE | Golden Software 7 Binary Grid (.grd) |
| GSAG | TRUE | FALSE | read/write | TRUE | Golden Software ASCII Grid (.grd) |
| GSBG | TRUE | FALSE | read/write | TRUE | Golden Software Binary Grid (.grd) |
| GSC | TRUE | FALSE | read | TRUE | GSC Geogrid |
| GTFS | FALSE | TRUE | read | TRUE | General Transit Feed Specification |
| GTiff | TRUE | FALSE | read/write | TRUE | GeoTIFF |
| GTX | TRUE | FALSE | read/write | TRUE | NOAA Vertical Datum .GTX |
| GXF | TRUE | FALSE | read | TRUE | GeoSoft Grid Exchange Format |
| HDF4 | TRUE | FALSE | read | FALSE | Hierarchical Data Format Release 4 |
| HDF4Image | TRUE | FALSE | read/write | FALSE | HDF4 Dataset |
| HDF5 | TRUE | FALSE | read | TRUE | Hierarchical Data Format Release 5 |
| HDF5Image | TRUE | FALSE | read | TRUE | HDF5 Dataset |
| HF2 | TRUE | FALSE | read/write | TRUE | HF2/HFZ heightfield raster |
| HFA | TRUE | FALSE | read/write | TRUE | Erdas Imagine Images (.img) |
| HTTP | TRUE | TRUE | read | FALSE | HTTP Fetching Wrapper |
| Idrisi | FALSE | TRUE | read | TRUE | Idrisi Vector (.vct) |
| ILWIS | TRUE | FALSE | read/write | TRUE | ILWIS Raster Map |
| IRIS | TRUE | FALSE | read | TRUE | IRIS data (.PPI, .CAPPi etc) |
| ISCE | TRUE | FALSE | read/write | TRUE | ISCE raster |
| ISG | TRUE | FALSE | read | TRUE | International Service for the Geoid |
| ISIS2 | TRUE | FALSE | read/write | TRUE | USGS Astrogeology ISIS cube (Version 2) |
| ISIS3 | TRUE | FALSE | read/write | TRUE | USGS Astrogeology ISIS cube (Version 3) |
| JAXAPALSAR | TRUE | FALSE | read | TRUE | JAXA PALSAR Product Reader (Level 1.1/1.5) |
| JDEM | TRUE | FALSE | read | TRUE | Japanese DEM (.mem) |
| JML | FALSE | TRUE | read/write | TRUE | OpenJUMP JML |
| JP2OpenJPEG | TRUE | TRUE | read/write | TRUE | JPEG-2000 driver based on OpenJPEG library |
| JPEG | TRUE | FALSE | read/write | TRUE | JPEG JFIF |
| JSONFG | FALSE | TRUE | read/write | TRUE | OGC Features and Geometries JSON |
| KML | FALSE | TRUE | read/write | TRUE | Keyhole Markup Language (KML) |
| KMLSUPEROVERLAY | TRUE | FALSE | read/write | TRUE | Kml Super Overlay |
| KRO | TRUE | FALSE | read/write | TRUE | KOLOR Raw |
| L1B | TRUE | FALSE | read | TRUE | NOAA Polar Orbiter Level 1b Data Set |
| LAN | TRUE | FALSE | read/write | TRUE | Erdas .LAN/.GIS |
| LCP | TRUE | FALSE | read/write | TRUE | FARSITE v.4 Landscape File (.lcp) |
| Leveller | TRUE | FALSE | read/write | TRUE | Leveller heightfield |
| LOSLAS | TRUE | FALSE | read | TRUE | NADCON .los/.las Datum Grid Shift |
| LVBAG | FALSE | TRUE | read | TRUE | Kadaster LV BAG Extract 2.0 |
| MAP | TRUE | FALSE | read | TRUE | OziExplorer .MAP |
| MapInfo File | FALSE | TRUE | read/write | TRUE | MapInfo File |
| MapML | FALSE | TRUE | read/write | TRUE | MapML |
| MBTiles | TRUE | TRUE | read/write | TRUE | MBTiles |
| MEM | TRUE | FALSE | read/write | FALSE | In Memory Raster |
| Memory | FALSE | TRUE | read/write | FALSE | Memory |
| MFF | TRUE | FALSE | read/write | TRUE | Vexcel MFF Raster |
| MFF2 | TRUE | FALSE | read/write | FALSE | Vexcel MFF2 (HKV) Raster |
| MRF | TRUE | FALSE | read/write | TRUE | Meta Raster Format |
| MSGN | TRUE | FALSE | read | TRUE | EUMETSAT Archive native (.nat) |
| MSSQLSpatial | FALSE | TRUE | read/write | FALSE | Microsoft SQL Server Spatial Database |
| MVT | FALSE | TRUE | read/write | TRUE | Mapbox Vector Tiles |
| NDF | TRUE | FALSE | read | TRUE | NLAPS Data Format |
| netCDF | TRUE | TRUE | read/write | FALSE | Network Common Data Format |
| NGSGEOID | TRUE | FALSE | read | TRUE | NOAA NGS Geoid Height Grids |
| NGW | TRUE | TRUE | read/write | FALSE | NextGIS Web |
| NITF | TRUE | FALSE | read/write | TRUE | National Imagery Transmission Format |
| NOAA_B | TRUE | FALSE | read | TRUE | NOAA GEOCON/NADCON5 .b format |
| NSIDCbin | TRUE | FALSE | read | TRUE | NSIDC Sea Ice Concentrations binary (.bin) |
| NTv2 | TRUE | FALSE | read/write | TRUE | NTv2 Datum Grid Shift |
| NWT_GRC | TRUE | FALSE | read | TRUE | Northwood Classified Grid Format .grc/.tab |
| NWT_GRD | TRUE | FALSE | read/write | TRUE | Northwood Numeric Grid Format .grd/.tab |
| OAPIF | FALSE | TRUE | read | FALSE | OGC API - Features |
| ODBC | FALSE | TRUE | read | FALSE |  |
| ODS | FALSE | TRUE | read/write | TRUE | Open Document/ LibreOffice / OpenOffice Spreadsheet  |
| OGCAPI | TRUE | TRUE | read | TRUE | OGCAPI |
| OGR_GMT | FALSE | TRUE | read/write | TRUE | GMT ASCII Vectors (.gmt) |
| OGR_PDS | FALSE | TRUE | read | TRUE | Planetary Data Systems TABLE |
| OGR_SDTS | FALSE | TRUE | read | TRUE | SDTS |
| OGR_VRT | FALSE | TRUE | read | TRUE | VRT - Virtual Datasource |
| OpenFileGDB | TRUE | TRUE | read/write | TRUE | ESRI FileGDB |
| OSM | FALSE | TRUE | read | TRUE | OpenStreetMap XML and PBF |
| OZI | TRUE | FALSE | read | TRUE | OziExplorer Image File |
| PAux | TRUE | FALSE | read/write | TRUE | PCI .aux Labelled |
| PCIDSK | TRUE | TRUE | read/write | TRUE | PCIDSK Database File |
| PCRaster | TRUE | FALSE | read/write | FALSE | PCRaster Raster File |
| PDF | TRUE | TRUE | read/write | FALSE | Geospatial PDF |
| PDS | TRUE | FALSE | read | TRUE | NASA Planetary Data System |
| PDS4 | TRUE | TRUE | read/write | TRUE | NASA Planetary Data System 4 |
| PGDUMP | FALSE | TRUE | read/write | TRUE | PostgreSQL SQL dump |
| PGeo | FALSE | TRUE | read | FALSE | ESRI Personal GeoDatabase |
| PLMOSAIC | TRUE | FALSE | read | FALSE | Planet Labs Mosaics API |
| PLSCENES | TRUE | TRUE | read | FALSE | Planet Labs Scenes API |
| PMTiles | FALSE | TRUE | read/write | TRUE | ProtoMap Tiles |
| PNG | TRUE | FALSE | read/write | TRUE | Portable Network Graphics |
| PNM | TRUE | FALSE | read/write | TRUE | Portable Pixmap Format (netpbm) |
| PostGISRaster | TRUE | FALSE | read/write | FALSE | PostGIS Raster driver |
| PostgreSQL | FALSE | TRUE | read/write | FALSE | PostgreSQL/PostGIS |
| PRF | TRUE | FALSE | read | TRUE | Racurs PHOTOMOD PRF |
| R | TRUE | FALSE | read/write | TRUE | R Object Data Store |
| Rasterlite | TRUE | FALSE | read/write | TRUE | Rasterlite |
| RIK | TRUE | FALSE | read | TRUE | Swedish Grid RIK (.rik) |
| RMF | TRUE | FALSE | read/write | TRUE | Raster Matrix Format |
| ROI_PAC | TRUE | FALSE | read/write | TRUE | ROI_PAC raster |
| RPFTOC | TRUE | FALSE | read | TRUE | Raster Product Format TOC format |
| RRASTER | TRUE | FALSE | read/write | TRUE | R Raster |
| RS2 | TRUE | FALSE | read | TRUE | RadarSat 2 XML Product |
| RST | TRUE | FALSE | read/write | TRUE | Idrisi Raster A.1 |
| S102 | TRUE | FALSE | read | TRUE | S-102 Bathymetric Surface Product |
| S57 | FALSE | TRUE | read/write | TRUE | IHO S-57 (ENC) |
| SAFE | TRUE | FALSE | read | TRUE | Sentinel-1 SAR SAFE Product |
| SAGA | TRUE | FALSE | read/write | TRUE | SAGA GIS Binary Grid (.sdat, .sg-grd-z) |
| SAR_CEOS | TRUE | FALSE | read | TRUE | CEOS SAR Image |
| SDTS | TRUE | FALSE | read | TRUE | SDTS Raster |
| Selafin | FALSE | TRUE | read/write | TRUE | Selafin |
| SENTINEL2 | TRUE | FALSE | read | TRUE | Sentinel 2 |
| SGI | TRUE | FALSE | read/write | TRUE | SGI Image File Format 1.0 |
| SIGDEM | TRUE | FALSE | read/write | TRUE | Scaled Integer Gridded DEM .sigdem |
| SNODAS | TRUE | FALSE | read | TRUE | Snow Data Assimilation System |
| SQLite | FALSE | TRUE | read/write | TRUE | SQLite / Spatialite |
| SRP | TRUE | FALSE | read | TRUE | Standard Raster Product (ASRP/USRP) |
| SRTMHGT | TRUE | FALSE | read/write | TRUE | SRTMHGT File Format |
| STACIT | TRUE | FALSE | read | TRUE | Spatio-Temporal Asset Catalog Items |
| STACTA | TRUE | FALSE | read | TRUE | Spatio-Temporal Asset Catalog Tiled Assets |
| SVG | FALSE | TRUE | read | TRUE | Scalable Vector Graphics |
| SXF | FALSE | TRUE | read | TRUE | Storage and eXchange Format |
| Terragen | TRUE | FALSE | read/write | TRUE | Terragen heightfield |
| TGA | TRUE | FALSE | read | TRUE | TGA/TARGA Image File Format |
| TIGER | FALSE | TRUE | read | TRUE | U.S. Census TIGER/Line |
| TIL | TRUE | FALSE | read | TRUE | EarthWatch .TIL |
| TopoJSON | FALSE | TRUE | read | TRUE | TopoJSON |
| TSX | TRUE | FALSE | read | TRUE | TerraSAR-X Product |
| UK .NTF | FALSE | TRUE | read | TRUE | UK .NTF |
| USGSDEM | TRUE | FALSE | read/write | TRUE | USGS Optional ASCII DEM (and CDED) |
| VDV | FALSE | TRUE | read/write | TRUE | VDV-451/VDV-452/INTREST Data Format |
| VFK | FALSE | TRUE | read | FALSE | Czech Cadastral Exchange Data Format |
| VICAR | TRUE | TRUE | read/write | TRUE | MIPL VICAR file |
| VRT | TRUE | FALSE | read/write | TRUE | Virtual Raster |
| WAsP | FALSE | TRUE | read/write | TRUE | WAsP .map format |
| WCS | TRUE | FALSE | read | TRUE | OGC Web Coverage Service |
| WEBP | TRUE | FALSE | read/write | TRUE | WEBP |
| WFS | FALSE | TRUE | read | TRUE | OGC WFS (Web Feature Service) |
| WMS | TRUE | FALSE | read/write | TRUE | OGC Web Map Service |
| WMTS | TRUE | FALSE | read/write | TRUE | OGC Web Map Tile Service |
| XLS | FALSE | TRUE | read | FALSE | MS Excel format |
| XLSX | FALSE | TRUE | read/write | TRUE | MS Office Open XML spreadsheet |
| XPM | TRUE | FALSE | read/write | TRUE | X11 PixMap Format |
| XYZ | TRUE | FALSE | read/write | TRUE | ASCII Gridded XYZ |
| Zarr | TRUE | FALSE | read/write | TRUE | Zarr |
| ZMap | TRUE | FALSE | read/write | TRUE | ZMap Plus Grid |

</details>

## Capability probes

| probe | ok | detail | seconds |
|---|---|---|---|
| raster read via /vsicurl/ (GDAL autotest byte.tif) | yes | 50706 | 0.28 |
| raster write+read GTiff | yes | 8390656 | 0.09 |
| raster write+read COG | yes | 8390656 | 0.04 |
| raster write+read netCDF | yes | 8390656 | 0.02 |
| raster write+read Zarr | yes | 8390656 | 0.02 |
| raster write+read GPKG | yes | 8390656 | 0.04 |
| raster write+read JP2OpenJPEG | yes | 8388608 | 0.02 |
| vector write+read GPKG | yes | 100 | 0.03 |
| vector write+read FlatGeobuf | yes | 100 | 0.01 |
| vector write+read GeoJSON | yes | 100 | 0.03 |
| vector write+read Parquet | no | Driver not available.  | 0 |
| vector write+read Arrow | no | Driver not available.  | 0 |
| vector write+read OpenFileGDB | yes | 100 | 0.05 |

## Recipe libraries published for CRAN macOS builds

Newest tarball of each library in <https://mac.r-project.org/bin/darwin20/x86_64/>. This is what is *available* to
CRAN's macOS builders, not necessarily what a given package binary was linked against.

| library | newest |
|---|---|
| gdal | 3.10.1 |
| proj | 9.5.1 |
| geos | 3.14.1 |
| sqlite3 | 3.48.0 |
| tiff | 4.7.0 |
| netcdf | 4.9.2 |
| hdf5 | 1.14.5 |
| openjpeg | 2.5.4 |
| libwebp | 1.6.0 |
| zstd | 1.5.7 |
| xz | 5.8.3 |
| libdeflate | 1.25 |
| lerc |  |
| expat | 2.7.5 |
| pcre2 | 10.47 |
| freexl | 1.0.6 |
| hdf4 | 4.3.0 |

