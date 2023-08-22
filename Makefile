all: isgb2312
isgb2312: isgb2312.c isgb2312.h
	gcc isgb2312.c -o isgb2312
clean:
	rm -rf isgb2312
