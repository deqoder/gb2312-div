res=`../show-undiv.sh gb.dived.utf8.test`
expect=`cat gb.dived.utf8.test.expect`
if test "$res" = "$expect"; then
	echo 'test show-undiv.sh passed'
else
	echo 'test show-undiv.sh failed'
fi

