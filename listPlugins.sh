# list the names of all federated wiki plugins hosted in github.com/fedwiki

curl -s https://api.github.com/orgs/fedwiki/repos |\
	perl -ne 'print "$1\n" if /"name": "(.+?)"/' |\
		grep plugin
