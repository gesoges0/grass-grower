set -eu
a=$(date)
echo $a > hoge.txt
b=$(sha256sum hoge.txt)
c="$a ${b/hoge.txt/}"
echo $c >> daily.txt
git add .
git commit -m "daily commit ($c)"
git push origin main
