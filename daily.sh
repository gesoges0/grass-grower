a=$(date)
echo $a > hoge.txt
b=$(sha256sum hoge.txt)
c=${b/hoge.txt/$a}
echo $c >> daily.txt
git add .
git commit -m "daily commit ($c)"
git push origin main
