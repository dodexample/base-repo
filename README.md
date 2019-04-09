# base-repo
base repo for repo merge PofC

How I was able to merge coupled repo in preserving history:

```
  git mv Dockerfile Makefile README.md coupled-repo/
  git commit -m 'subdirectory'
  git push
  cd ../base-repo/
  git remote add coupled-repo git@github.com:dodexample/coupled-repo.git
  git pull coupled-repo master --allow-unrelated-histories
  git push
  git log
```

## Caveats

Though the git log shows all the history (?), the subdirectory only shows the history of the last commit to that subdirectory
