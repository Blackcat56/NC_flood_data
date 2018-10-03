#This loop is used for getting certain river gages most recent duscharge.txt.
for gauge in "02109500" "02134500" "02091814" "02105769"
do
wget -O "$gauge".txt "https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=$gauge&period=&begin_date=2018-09-25&end_date=2018-10-01"
sed -n '17p' "$gauge".txt >> flow_out.txt
tail -n 1 "$gauge".txt|cut -d '/t' -f 3,5 >> flow_out.txt
done

#This code line combines the two lines from flow output into one line for the new text file, most_recent_discharge. 
paste - - < flow_out.txt > most_recent_discharge.txt