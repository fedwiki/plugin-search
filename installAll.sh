# install all plugins based on search results
# sh installAll.sh

rm -rf all
mkdir all
echo {} >all/package.json
curl -s http://search.fed.wiki.org:3030/plugins.txt | \
  perl -ne 'print if /\w/' | \
  while read p; do
  	echo
  	echo wiki-plugin-$p
  	(cd all; npm i wiki-plugin-$p)
  done
