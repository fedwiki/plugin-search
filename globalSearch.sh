# search all plugins for code references to wiki

grep wiki `ls all/*/client/*.coffee` |\
	 perl -ne 'print "$2\t$1\n" if /(\S+).*\b(wiki\.\w+)\b/' |\
		 sort | uniq
