#!/bin/bash

set -e

echo "========================================="
echo "Step 2: BWA-MEM Alignment"
echo "========================================="

PROJECT_DIR="$HOME/Desktop/Germline_Variant_Pipeline"
READS_DIR="${PROJECT_DIR}/reads"
REF_DIR="${PROJECT_DIR}/supporting_files/hg38"
ALIGN_DIR="${PROJECT_DIR}/aligned_reads"
LOG_DIR="${PROJECT_DIR}/logs"

REF="${REF_DIR}/hg38.fa"
READ1="${READS_DIR}/subset_1.fastq.gz"
READ2="${READS_DIR}/subset_2.fastq.gz"

mkdir -p "${ALIGN_DIR}"
mkdir -p "${LOG_DIR}"

echo "Checking input files..."

if [ ! -f "${REF}" ]; then
    echo "ERROR: Reference genome not found: ${REF}"
    exit 1
fi

if [ ! -f "${READ1}" ]; then
    echo "ERROR: Read 1 not found: ${READ1}"
    exit 1
fi

if [ ! -f "${READ2}" ]; then
    echo "ERROR: Read 2 not found: ${READ2}"
    exit 1
fi

echo "All input files found."
echo ""
echo "Starting BWA-MEM alignment..."

bwa mem -t 2 \
    -R "@RG\tID:SRR062634\tSM:SRR062634\tPL:ILLUMINA" \
    "${REF}" \
    "${READ1}" \
    "${READ2}" | \
    samtools sort -@ 2 \
    -o "${ALIGN_DIR}/SRR062634.sorted.bam"

echo "Indexing BAM file..."

samtools index "${ALIGN_DIR}/SRR062634.sorted.bam"

echo "Alignment completed successfully!"
