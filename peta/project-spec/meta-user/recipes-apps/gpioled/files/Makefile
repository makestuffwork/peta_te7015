APP = gpioled

# Add any other object files to this list below
APP_OBJS = gpioled.o

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) -pthread $(LDFLAGS) -o $@ $(APP_OBJS) $(LDLIBS)

clean:
	-rm -f $(APP) *.elf *.gdb *.o
