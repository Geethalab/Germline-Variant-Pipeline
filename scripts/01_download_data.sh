#!/bin/bash

echo "======================================="
echo " Germline Variant Calling Pipeline"
echo " Step 1: Download sequencing data"
echo "======================================="

# Project directories
PROJECT_DIR="/Users/yoga/Desktop/Germline_Variant_Pipeline"
READS_DIR="${PROJECT_DIR}/reads"

# Move to the reads directory
cd "${READS_DIR}"

echo "Downloading FASTQ files..."

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR062/SRR062634/SRR062634_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR062/SRR062634/SRR062634_2.fastq.gz

echo "Download completed."
