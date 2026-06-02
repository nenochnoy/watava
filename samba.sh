for i in {1..5};
do
	samba-tool user add hquser$i P@ssw0rd;
	samba-tool user setexpiry hquser$i --noexpiry;
	samba-tool group addmembers "hq" hquser$i;
done
