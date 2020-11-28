set -eu
a=$(date "+%Y/%m/%d %H:%M:%S")
echo $a > hoge.txt
b=$(sha256sum hoge.txt)
c="$a ${b/hoge.txt/}"
echo $c >> daily.txt
git add "$(pwd)"
git status
git commit -m "daily commit ($a)"
git push origin main
