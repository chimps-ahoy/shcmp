BEGIN {
	real=0
	rcount=0
	user=0
	ucount=0
	sys=0
	scount=0
}

/^real/{
	real+=$2
	rcount+=1
}
/^user/{
	user+=$2
	ucount+=1
}
/^sys/{
	sys+=$2
	scount+=1
}

END {
	real=real/rcount
	user=user/ucount
	sys=sys/scount
	printf "real: %f\nuser: %f\nsys: %f\n", real, user, sys
}
