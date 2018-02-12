
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis build status](https://travis-ci.org/dis-organization/gdalosx.svg?branch=master)](https://travis-ci.org/dis-organization/gdalosx)[![Coverage status](https://codecov.io/gh/dis-organization/gdalosx/branch/master/graph/badge.svg)](https://codecov.io/github/dis-organization/gdalosx?branch=master)[![AppVeyor Build Status](https://ci.appveyor.com/dis-organization/gdalosx)](https://ci.appveyor.com/api/projects/status/github/dis-organization/gdalosx?branch=master&svg=true)

gdalosx
=======

The goal of gdalosx is to find out how to use travis to test a GDAL-dependent R package on OSX. GDAL has a [pretty comprehensive CI test suite](https://github.com/OSGeo/gdal/tree/trunk/gdal/ci/travis) that I'm using as a guide.

Currently my build matrix is only trusty (Ubuntu 14.04) and xcode8 (OSX), just so I know it works in both environments. I know really nothing about OSX so this is helpful for knowing that we can support that platform for various R projects.

The R package here doesn't do anything interesting, the crux here is the .travis.yml and the badges in the readme.
