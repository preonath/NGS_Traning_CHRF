##FastQC
fastqc -o FastQC_result -f fastq -t 12 GBS_0001_1.fastq.gz GBS_0001_2.fastq.gz 



##Fastp
fastp --in1 GBS_0001_1.fastq.gz --in2 GBS_0001_2.fastq.gz --out1 GBS_0001_1_TrmP.fastq.gz --out2 GBS_0001_2_TrmP.fastq.gz --unpaired1 GBS_0001_TrmS_1.fastq.gz --unpaired2 GBS_0001_TrmS_2.fastq.gz --average_qual 20 --length_required 35 --complexity_threshold 35 --trim_poly_g --trim_poly_x --thread 16 --detect_adapter_for_pe


unicycler -1 GBS_0001_1_TrmP.fastq.gz -2 GBS_0001_2_TrmP.fastq.gz --min_fasta_length 300 -t 7 --keep 1 -o assembly_result
