CC = gcc

CFLAGS = -g -Wall

TARGET = task
SRC = main
# Without \#
DEST = ${HOME}

.PHONY: all
all: $(TARGET) build-rpm


build-rpm:
	./mkrpmenv.sh;\
	./create_tar.sh ${DEST};\
	./create_specs.sh;\
	rpmbuild -ba --define '_DEST ${DEST}' SPECS/prog.spec;
.PHONY: rpm

$(TARGET):$(SRC).c
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC).c

clean:
	$(RM) $(TARGET)

