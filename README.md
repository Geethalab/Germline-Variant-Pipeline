# 🧬 Germline Variant Calling Pipeline

> ⚠️ Note: This pipeline uses a small subset of whole genome sequencing (WGS) data for demonstration purposes.

---

## 📌 Overview

This project demonstrates an end-to-end germline variant calling pipeline using industry-standard bioinformatics tools.

The workflow processes raw FASTQ sequencing data and produces high-confidence variant calls (VCF), along with quality control metrics and functional annotations.

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

```
Germline-Variant-Pipeline/
│── scripts/        # Pipeline scripts
│── results/        # Final outputs (small demo files)
│── docs/           # Documentation
│── README.md
│── .gitignore
```

---

## ▶️ How to Run

```bash
# Step 1: Download data
bash scripts/01_download_data.sh

# Step 2: Run alignment and variant calling
bash scripts/02_alignment.sh
```

---

## 📌 Key Results

- Successfully processed raw FASTQ data into high-quality variant calls  
- Identified SNPs and INDELs using the GATK pipeline  
- Performed functional annotation of variants  
- Extracted biologically relevant variants for interpretation  

## 📊 Example Results

The pipeline was tested on a subset of WGS data (SRR062634).

### Output Summary
- Variants successfully called using GATK HaplotypeCaller
- SNPs and INDELs filtered to retain high-confidence variants
- Functional annotation performed using Funcotator

### Key Output Files
- `results/important_variants.txt` → prioritized biologically relevant variants  
- Filtered VCF files containing SNPs and INDELs  

### Interpretation
This demonstrates the ability to:
- Process raw sequencing data into interpretable results  
- Apply variant filtering strategies  
- Perform downstream functional annotation  
