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

- Processed paired-end WGS reads (subset dataset for demonstration)
- Total variants identified: 1,750  
  - SNPs: 1,630  
  - INDELs: 120  
- High-confidence variants retained after filtering (PASS variants)
- Functional annotation performed using GATK Funcotator
- Key biologically relevant variants extracted (see `results/important_variants.txt`)
- Implementation follows GATK Best Practices workflow

---

## 📊 Example Results

The pipeline was tested on a  WGS subset dataset (SRR062634).

### Output Summary
- Variants successfully called using GATK HaplotypeCaller  
- SNPs and INDELs filtered to retain high-confidence variants  
- Functional annotation performed using Funcotator  

### Key Output Files
- `results/important_variants.txt` → prioritized variants  
- Filtered VCF files containing SNPs and INDELs  

### What this project shows
- End-to-end NGS data processing capability  
- Variant calling and filtering using GATK  
- Functional annotation and result interpretation  
- Handling and structuring large genomic datasets  
