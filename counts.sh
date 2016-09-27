echo "count,filename" > seq_counts.csv
for f in ./TN*.fastq.gz; do
    cat $f | bioawk -c fastx '{print $name}' | wc -l | awk -v f=$f 'BEGIN{OFS=","}{print $0, f}';
done >> seq_counts.csv