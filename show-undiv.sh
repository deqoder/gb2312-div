if ! test "$1"; then
	set -- gb.dived.utf8
fi
cat $1 | awk -F"," '{\
	isdiv[$1] = $2 $3;\
	chars[$1] = chars[$1] "-"; \
	chars[$2] = chars[$2] $1; \
	chars[$3] = chars[$3] $1;\
	} END {\
		for (ch in chars) {\
			if (isdiv[ch] == "") {\
				printf("%s: %s\n", ch, chars[ch]);\
			}\
		}\
	}'
