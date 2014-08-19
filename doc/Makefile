
.PHONY: all
all:

MSC_SRCS = open_session.msc invoke_command.msc \
	   close_session_and_finalize_context.msc

PNGS += $(MSC_SRCS:.msc=.png)

# Disable all builtin rules
.SUFFIXES:
.SUFFIXES: .png .msc

all: $(PNGS)

%.png : %.msc
	mscgen -T png $<

.PHONY: clean
clean:
	rm -f $(PNGS)
