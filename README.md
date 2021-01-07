# grass-grower
a

```
$bash daily.sh
```

append this in ~/.bash_profile
```
# daily
export PATH="$PATH:/home/gesogeso/デスクトップ/grass-grower"
alias daily="bash daily.sh"
```

fake your commit history
```
echo "flag" >> piyo.txt
git add .
git commit -m "flag"
bash fake.sh
git push origin main
```
if you repent this operation
```
git log | grep flag
# copy commit hash
git checkout -b {new-default-branch-name} {commit hash}
git push origin {new-default-branch-name}
# GitHub -> repository -> Settings -> Branches -> Default branch
```
