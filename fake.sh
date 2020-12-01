start="2019-01-01"
for i in $(seq 1 300)
do
	d=$(date -R -d "${start} + ${i}days")
	echo $d >> piyo.txt
	git add piyo.txt
	git commit -m "hogehoge"
	git commit --amend --date="${d}" -m "daily commit ${d}"
done
