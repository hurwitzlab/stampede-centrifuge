#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -p development
#SBATCH -J cntrfuge
#SBATCH --mail-type BEGIN,END,FAIL
#SBATCH --mail-user kyclark@email.arizona.edu

OUT_DIR="$SCRATCH/centrifuge/test"

[[ -d "$OUT_DIR" ]] && rm -rf $OUT_DIR/*

sh run.sh -q "$WORK/data/dolphin/fasta/Dolphin_1_z04.fa" -q "$WORK/data/dolphin/fasta/Dolphin_3_z11.fa" -o $OUT_DIR
