start="2020-01-01"
for i in $(seq 1 5)
do
	d=$(date -R -d "${start} + ${i}days")
	echo $d >> piyo.txt
	git add piyo.txt
	git commit -m "hogehoge"
	git commit --ammend --date="${d}" -m "daily commit"
done
