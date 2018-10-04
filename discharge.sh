#Download discharge data for gauging stations of interests in NC from USGS website
#Usage bash discharge.sh  

for gauge in "02109500" "02134500" "02091814" "02105769" $1
do
	wget -O "$gauge".txt "https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=$gauge&period=&begin_date=2018-09-25&end_date=$1"
	sed -n '17p' "$gauge".txt >> flow.txt
        tail -n 1 "$gauge".txt >> flow.txt	
done

#This loop is used for getting certain river gauges most recent discharge on today's date. 
#Note that gauge number could be made a variable as well if additional gauges became of interest.

paste - - < flow.txt > most_recent_discharge.txt
#This code line combines the two lines from flow output into one line for the new text file, most_recent_discharge.

rm flow.txt

