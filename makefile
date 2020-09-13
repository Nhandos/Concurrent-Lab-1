EXECS=part1 part2 part3 part4 part5
MPICC=mpicc

all: ${EXECS}

debug: CFLAGS += -g -DDEBUG=1 
debug: all

part1: lab1part1.c
	${MPICC} ${CFLAGS} -o part1 lab1part1.c

part2: lab1part2.c
	${MPICC} ${CFLAGS} -o part2 lab1part2.c
	
part3: lab1part3.c
	${MPICC} ${CFLAGS} -o part3 lab1part3.c

part4: lab1part4.c
	${MPICC} ${CFLAGS} -o part4 lab1part4.c

part4_clock: CFLAGS += -DCLOCK=1
part4_clock: part4

part5: lab1part5.c
	${MPICC} ${CFLAGS} -o part5 lab1part5.c

clean:
	rm -rf ${EXECS}
