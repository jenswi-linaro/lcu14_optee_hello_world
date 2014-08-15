
export V?=0

.PHONY: all
all:
	make -C host CROSS_COMPILE=$(HOST_CROSS_COMPILE)
	make -C ta CROSS_COMPILE=$(TA_CROSS_COMPILE)

.PHONY: clean
clean:
	make -C host clean
	make -C ta clean
	
