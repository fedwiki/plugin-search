# find all sources by text search through client js
# usage: sh installAll.sh; sh allSources.sh | sort | uniq

curl -s http://search.fed.wiki.org:3030/plugins.txt | \
  perl -ne 'print if /\w/' | \
  while read p; do
  	cat all/node_modules/wiki-plugin-$p/client/$p.js | perl -ne 'print "$1 '$p'\n" if /\b(\w+-source)/'
  done
