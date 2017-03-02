OUT_DIR?=vendor
LIQDIR=$(OUT_DIR)/lib

all: $(LIQDIR)/libimagequant.a

$(LIQDIR)/libimagequant.a:: $(LIQDIR)
	make -C $(LIQDIR) static

$(LIQDIR):
	curl -L https://pngquant.org/pngquant-2.9.0-src.tar.gz | tar xz -C $(OUT_DIR) --strip-components=1

clean:
	make -C $(LIQDIR) clean

.PHONY: all clean
