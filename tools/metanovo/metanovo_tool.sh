#!/bin/bash

#
# Simple script that runs the metanovo singularity image.
#

SCRIPT_DIR=$(dirname "$0")
PROJECT_DIR=metanovo_project
MGF_DIR=$PROJECT_DIR/mgf_files
OUTPUT_DIR=$PROJECT_DIR/output

run_metanovo () {
    singularity exec $SCRIPT_DIR/metanovo_v1.6.img metanovo.sh $MGF_DIR $PROJECT_DIR/in.fasta $PWD/$OUTPUT_DIR $PROJECT_DIR/config.sh
}

# Run again to run the actual search
run_metanovo
