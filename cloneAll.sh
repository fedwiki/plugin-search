# make a fresh clone of all plugin repos

rm -rf all
mkdir all
for i in `sh listPlugins.sh`
do (cd all; git clone git@github.com:fedwiki/$i.git)
done
