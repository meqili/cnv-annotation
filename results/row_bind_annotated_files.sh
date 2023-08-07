file1=consensus_seg_annotated_cn_autosomes.tsv.gz
file2=consensus_seg_annotated_cn_x_and_y.tsv.gz
output_file="consensus_annotated.tsv"

# Combine the files and remove the header from the second file
zcat < $file2 | head -n 1 > $output_file
((zcat < $file1 | tail -n +2) && (zcat < $file2 | tail -n +2) )| sort -k1,1 -k2,2 >> $output_file
