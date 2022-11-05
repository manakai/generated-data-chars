# -*- Makefile -*-

ROOT_PATH = ../../../..
PERL5OPTS =  \
    -I$(ROOT_PATH)/bin/modules/json-ps/lib \
    -I$(ROOT_PATH)/bin/modules/web-encodings/lib
PERL = $(ROOT_PATH)/perl $(PERL5OPTS)
VGEN_PATH = $(ROOT_PATH)/intermediate/vgen

all: build-vgen

build-nightly: build-vgen-nightly
build-pages: build-vgen-pages

VGEN_MERGED_INPUTS = ../../../../intermediate/adobe/maps.list \
  ../../../../intermediate/charrels/hans-input.json \
  ../../../../intermediate/cjkvi/variants.list \
  ../../../../intermediate/cns/maps.list \
  ../../../../intermediate/cns/maps2.list \
  ../../../../intermediate/jp/variants.list \
  ../../../../intermediate/loc/maps.list \
  ../../../../intermediate/misc/aggregated.json \
  ../../../../intermediate/misc/maps.list \
  ../../../../intermediate/misc/sets.json \
  ../../../../intermediate/misc/variants.list \
  ../../../../intermediate/mj/fmaps.list \
  ../../../../intermediate/mj/maps.list \
  ../../../../intermediate/mj/variants.json \
  ../../../../intermediate/mozilla/maps.list \
  ../../../../intermediate/opencc/variants.list \
  ../../../../intermediate/perl/maps.list \
  ../../../../intermediate/unicode/maps.list \
  ../../../../intermediate/unicode/maps2.list \
  ../../../../intermediate/unicode/maps3.list \
  ../../../../intermediate/unicode/namesrefs.list \
  ../../../../intermediate/unicode/variants.json \
  ../../../../intermediate/unicode/variants2.list \
  ../../../../intermediate/vgen/Makefile.template \
  ../../../../intermediate/whatwg/maps.list \
  ../../../../intermediate/wiki/maps.list \
  ../../../../intermediate/wiki/variants.json
VGEN_TEST_INPUTS = ../../../../intermediate/charrels/hans-tests.txt

build-vgen build-vgen-nightly build-vgen-pages test perl-test:: %:
	$(MAKE) -f $(VGEN_PATH)/Makefile.vgen $@ \
	    ROOT_PATH="$(ROOT_PATH)" \
	    VGEN_MERGED_INPUTS="$(VGEN_MERGED_INPUTS)"

## License: Public Domain.
