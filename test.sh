<<<<<<< HEAD
for gauge in "02109500"
do
wget -O "$gauge".txt "https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=$gauge&period=&begin_date=2018-09-25&end_date=2018-10-01"
sort -r "$gauge".txt | head -n 2 | tail -n 1 >> most_recent_discharge.txt
done
#test loop
=======
for gauge in "02109500" "02134500" "02091814" "02105769" $1
do
	sed -n '17p' "$gauge".txt >> flow.txt
        tail -n 1 "$gauge".txt >> flow.txt
done

cut -d$'\t' -f 3 -f 5 flow.txt > flow2.txt
#This loop is used for getting certain river gauges most recent discharge on today's date.
#Note that gauge number could be made a variable as well if additional gauges became of interest.

paste - - < flow2.txt > most_recent_discharge.txt
#This code line combines the two lines from flow output into one line for the new text file, most_recent_discharge.

rm flow.txt flow2.txt 
>>>>>>> loop
