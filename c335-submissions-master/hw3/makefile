CC = gcc
CFLAGS = -g
LDFLAGS = 

hw3: hw3.o
	$(CC) $(LDFLAGS) -o hw3 hw3.o

hw3.o: hw3.c
	$(CC) $(CFLAGS) -c hw3.c

test:
	arm-none-eabi-as test_case -o test.o
	arm-none-eabi-objcopy test.o -O binary --only-section=.text test.bin
	hexdump -x test.bin |sed -e 's/^[^ ]*//' > test.hex

clean:
	rm -rf hw3 hw3.o test.hex test.bin test.o