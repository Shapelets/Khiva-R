#!/bin/bash
# Copyright (c) 2018 Shapelets.io
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Build the project

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    R CMD BATCH .CI/travis/script-osx.R
else
    Rscript .CI/travis/script-linux.R
fi