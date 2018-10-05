North Carolina River Gages Extraction Code ReadME


This code was created to figure out how four rivers of North Carolina are being affected by hurricane Florence. The four gage's data is downloaded from the USGS website as part of the code the code.
After downloading the data the loop creates different text files for gage amounts and creates a single file containing the most recent gage amounts from all the rivers.  The file discharge.sh contains the code that preforms the requested tasks. The unit for river discharge is cfs or cubic feet per second.           


Tasks are split as follows:

Jill- wget code

Autum- loop script

Amanda- readme file and various tidying within the script


Gage data information: 


Background information:


The four gage sites are:

02109500	 WACCAMAW RIVER AT FREELAND, NC

02134500	 LUMBER RIVER AT BOARDMAN, NC

02091814	 NEUSE RIVER NEAR FORT BARNWELL, NC

02105769	 CAPE FEAR R AT LOCK ONE NR KELLY, NC



The urls for the four gage sites are:

Waccamaw River @ Freeland https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02109500&period=&begin_date=2018-09-25&end_date=2018-10-01

Lumber River @ Boardman https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02134500&period=&begin_date=2018-09-25&end_date=2018-10-01

Neuse River near Fort Barnwell https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02091814&period=&begin_date=2018-09-25&end_date=2018-10-01

Cape Fear R at Lock #1 Kelly https://waterdata.usgs.gov/nc/nwis/uv?cb_00060=on&format=rdb&site_no=02105769&period=&begin_date=2018-09-25&end_date=2018-10-01 
