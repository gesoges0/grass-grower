set -eu
target="/home/gesogeso/デスクトップ/grass-grower"
a=$(date "+%Y/%m/%d %H:%M:%S")
echo "date:"$a
echo $a > $target"/hoge.txt"
b=$(sha256sum $target/hoge.txt)
echo "hash:"$b
c="$a ${b/$target/}"
echo "output:"$c
echo $c >> $target"/daily.txt"
cd $target
git add $target"/*"
git status
git commit -m "daily commit ($a)"
git push origin main
