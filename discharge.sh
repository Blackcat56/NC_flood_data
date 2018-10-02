for gauge in "02109500" "02134500" "02091814" "02105769"
do
wget -O "$gauge".txt "https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=$gauge&period=&begin_date=2018-09-25&end_date=2018-10-01"
sort -r "$gauge".txt | head -n 2 | tail -n 1 >> most_recent_discharge.txt
done
