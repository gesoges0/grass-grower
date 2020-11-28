a=$(date)
echo $a >> hoge.txt
b=$(sha256sum hoge.txt)
echo $b >> daily.txt
git add
git commit -m "daily commit ($b)"
git push origin main
