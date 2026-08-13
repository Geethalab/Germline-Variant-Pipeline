# 🧬 Germline Variant Calling Pipeline

A reproducible bioinformatics workflow for germline variant discovery and functional annotation from whole genome sequencing (WGS) data.

---

## 📌 Overview

This project demonstrates an end-to-end variant calling pipeline using industry-standard tools including GATK, BWA, SAMtools, and Funcotator.

The workflow processes raw FASTQ sequencing data and produces annotated variant calls (VCF), along with quality control metrics.

---

## ⚙️ Workflow

1. **Quality Control**
   - FastQC

2. **Read Alignment**
   - BWA-MEM → alignment to reference genome (hg38)

3. **Post-processing**
   - SAMtools sorting
   - Picard duplicate marking
   - Base Quality Score Recalibration (BQSR)

4. **Variant Calling**
   - GATK HaplotypeCaller

5. **Variant Filtering**
   - SNP and INDEL filtering

6. **Functional Annotation**
   - GATK Funcotator

---

## 🧰 Tools & Technologies

- **Programming:** Bash, Python  
- **NGS Tools:**  
  - FastQC  
  - BWA-MEM  
  - SAMtools  
  - GATK  
  - Picard  
  - Funcotator  

- **Data Formats:** FASTQ, BAM, VCF  

---

## 📁 Project Structure

