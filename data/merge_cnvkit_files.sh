rm -f ${1}/*.cns.seg
FILE1=`ls ${1}/*.seg`
FILE2=`ls ${1}/*.cns`
paste -d' ' $FILE1 $FILE2 | awk -F ' ' '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$12"\t"$14}' > ${FILE2}".seg"
