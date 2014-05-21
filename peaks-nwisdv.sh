# PEAKS-NWISDV searches DV files for the peak daily discharge value and echos the result to the console
# Written as a class exercise for Jeremiah Lant's Scientific Computing Series, April-May 2014
#
# Created by: Frank L. Engel, USGS ILWSC
# Last modified: 2014/05/21

# Loop through DV files in data/nwis-files
for filename in ../nwis-files/*dv.txt
do
	echo $filename
	# Search text of file, excluding header. Match discharge, and sort. Report only the peak
	grep -v -e "#" -e "agency_cd" -e "5s" $filename | cut -f3,4 | sort -n -k2 | tail -1
done