## Get hapmap examples genotype calling 

chmod +x data/hapmap/download.sh
cd data/hapmap/
./download.sh
cd ../../

## Get downsampled HCC1143 cell-line from Sanger

chmod +x data/cell-line/download.sh
cd data/cell-line/
./download.sh
cd ../../

## Get example bam and fastq files for Day 1

chmod +x Day1/data_for_day1.sh
cd Day1
./data_for_day1.sh
cd ../

## 

chmod +x ref_data/download.sh
cd ref_data
./download.sh
cd ../


## Download and unzip annovar into software/annovar
## cd software/annovar
## chmod +x annovar_commands.sh
## ./annovar_commands.sh
## 