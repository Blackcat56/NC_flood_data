North Carolina River Gages Extraction Code ReadME


This code was created to figure out how four rivers of North Carolina are being affected by hurricane Florence. The four gage's data is downloaded from the USGS website using the code.     


Background information: 

The sites are:

02109500	 WACCAMAW RIVER AT FREELAND, NC

02134500	 LUMBER RIVER AT BOARDMAN, NC

02091814	 NEUSE RIVER NEAR FORT BARNWELL, NC
 		 
02105769	 CAPE FEAR R AT LOCK #1 NR KELLY, NC



The urls for the four gage sites are:

Waccamaw River @ Freeland https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02109500&period=&begin_date=2018-09-25&end_date=2018-10-01

Lumber River @ Boardman https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02134500&period=&begin_date=2018-09-25&end_date=2018-10-01

Neuse River near Fort Barnwell https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02091814&period=&begin_date=2018-09-25&end_date=2018-10-01

Cape Fear R at Lock #1 Kelly https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02105769&period=&begin_date=2018-09-25&end_date=2018-10-01 



This shell script and loop code that downloads the most recent data of these four gage sites from North Carolina rivers. 


#Download discharge data for gauging stations of interests in NC from USGS website
#Usage: bash discharge.sh

for gauge in "02109500" "02134500" "02091814" "02105769" $1
do
	wget -O "$gauge".txt "https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=$gauge&period=&begin_date=2018-09-25&end_date=$1"
	sed -n '17p' "$gauge".txt >> flow.txt
        tail -n 1 "$gauge".txt >> flow.txt
done

#This loop is used for getting certain river gauges most recent discharge on today's date.
#Note that gauge number could be made a variable as well if additional gauges became of interest.

cut -d$'\t' -f 3 -f 5 flow.txt > flow2.txt
#this step grabs fields 3 and 5 (date/time and flow) only. Keeps ending file clean

paste - - < flow2.txt > most_recent_discharge.txt
#This code line combines the two lines from flow output into one line for the new text file, most_recent_discharge.
This shell script and loop code downloads the most recent data of these four gage sites from North Carolina rivers.
rm flow.txt flow2.txt



