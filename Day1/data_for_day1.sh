wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/other_exome_alignments/NA06984/exome_alignment/NA06984.mapped.illumina.mosaik.CEU.exome.20111114.bam

java -jar $PICARD DownsampleSam I=NA06984.mapped.illumina.mosaik.CEU.exome.20111114.bam O=random.bam P=0.1 VALIDATION_STRINGENCY=SILENT

rm NA12878.mapped.ILLUMINA.bwa.CEU.exome.20121211.bam

samtools view -f 0x02 -b random.bam > paired.bam 

java -jar $PICARD SamToFastq I=paired.bam F=sample.fq1 VALIDATION_STRINGENCY=SILENT F2=sample.fq2 R1_MAX_BASES=68 R2_MAX_BASES=68

rm random.bam
