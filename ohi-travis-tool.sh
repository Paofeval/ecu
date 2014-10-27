#!/bin/bash
# -*- sh-basic-offset: 4; sh-indentation: 4 -*-
# tweaked from https://raw.githubusercontent.com/craigcitro/r-travis/master/scripts/travis-tool.sh

set -e
# Comment out this line for quieter output:
set -x

CalculateScores() {  
    Rscript ./subcountry2014/calculate_scores.R
}

COMMAND=$1
echo "Running command: ${COMMAND}"
shift
case $COMMAND in
    ##
    ## Calculate OHI scores
    "calculate_scores")
        CalculateScores
        ;;
esac