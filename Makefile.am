VERSION=0.1.0
LANG1=sme
LANG2=sma
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_COMMON = \
	$(PREFIX1).automorf.hfst \
	$(PREFIX1).autobil.bin \
	$(PREFIX1).autolex.bin \
	$(PREFIX1).autogen.hfst \
	$(PREFIX2).automorf.hfst \
	$(PREFIX1).rlx.bin \
	$(PREFIX1).t1x.bin \
	$(PREFIX1).t2x.bin \
	$(PREFIX1).t3x.bin \
	$(PREFIX1).t4x.bin \
	$(PREFIX1).t5x.bin 

#
#	NORTHERN SÁMI TRANSDUCERS
#

.deps/$(PREFIX1).autobil.prefixes: $(PREFIX1).autobil.bin
	if [ ! -d .deps ]; then mkdir .deps; fi
	lt-print $(PREFIX1).autobil.bin | sed 's/ /@_SPACE_@/g' > .deps/$(PREFIX1).autobil.att
	hfst-txt2fst -e ε <  .deps/$(PREFIX1).autobil.att > .deps/$(PREFIX1).autobil.hfst
	echo " ?* " | hfst-regexp2fst > .deps/any-symbol.hfst
	hfst-project -p upper .deps/$(PREFIX1).autobil.hfst > .deps/$(PREFIX1).autobil.upper
	hfst-concatenate -1 .deps/$(PREFIX1).autobil.upper -2 .deps/any-symbol.hfst -o .deps/$(PREFIX1).autobil.prefixes

$(PREFIX1).automorf.hfst: $(BASENAME).$(LANG1).att.gz .deps/$(PREFIX1).autobil.prefixes
	zcat $< | hfst-txt2fst | hfst-invert > .deps/$(BASENAME).$(LANG1).hfst
	hfst-compose-intersect -1 .deps/$(PREFIX1).autobil.prefixes -2 .deps/$(BASENAME).$(LANG1).hfst -o - | hfst-invert | hfst-fst2fst -O -i - -o $@
	
#
#	SOUTH SÁMI TRANSDUCERS
#

.deps/$(LANG2).twol.hfst: $(BASENAME).$(LANG2).twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -R -i $(BASENAME).$(LANG2).twol -o $@

.deps/$(LANG2).lexc.hfst: $(BASENAME).$(LANG2).lexc
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-lexc --format foma $(BASENAME).$(LANG2).lexc -o $@

.deps/$(BASENAME).$(LANG2).hfst: .deps/$(LANG2).lexc.hfst .deps/$(LANG2).twol.hfst dev/apertium.generation.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-compose-intersect -1 .deps/$(LANG2).lexc.hfst -2 .deps/$(LANG2).twol.hfst -o $@

#
# The default form of the transducer is optimised
#
$(PREFIX1).autogen.hfst: .deps/$(BASENAME).$(LANG2).hfst dev/apertium.generation.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-substitute -F dev/apertium.generation.relabel -i .deps/$(BASENAME).$(LANG2).hfst -o .deps/$(PREFIX1).autogen.hfst
	hfst-fst2fst -O -i  .deps/$(PREFIX1).autogen.hfst -o $@

$(PREFIX2).automorf.hfst: .deps/$(BASENAME).$(LANG2).hfst dev/apertium.analysis.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-invert .deps/$(BASENAME).$(LANG2).hfst -o .deps/$(PREFIX2).automorf.hfst.tmp
	hfst-substitute -F dev/apertium.analysis.relabel -i .deps/$(PREFIX2).automorf.hfst.tmp -o .deps/$(PREFIX2).automorf.hfst
	hfst-fst2fst -O -i  .deps/$(PREFIX2).automorf.hfst -o $@
	rm .deps/$(PREFIX2).automorf.hfst.tmp

#
#	BILINGUAL DICTIONARY
#

$(PREFIX1).autobil.bin: $(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary $(BASENAME).$(PREFIX1).dix
	lt-comp lr $(BASENAME).$(PREFIX1).dix $@

#
#	CONSTRAINT GRAMMARS
#

$(PREFIX1).rlx.bin: $(BASENAME).$(PREFIX1).rlx
	cg-comp $(BASENAME).$(PREFIX1).rlx $@

#
#	LEXICAL SELECTION RULES
#

$(PREFIX1).autolex.bin: $(BASENAME).$(PREFIX1).lrx
	lrx-comp $(BASENAME).$(PREFIX1).lrx $@

#
#	TRANSFER RULES
#

$(PREFIX1).t1x.bin: $(BASENAME).$(PREFIX1).t1x
	apertium-validate-transfer $(BASENAME).$(PREFIX1).t1x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t1x $@

$(PREFIX1).t2x.bin: $(BASENAME).$(PREFIX1).t2x
	apertium-validate-interchunk $(BASENAME).$(PREFIX1).t2x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t2x $@

$(PREFIX1).t3x.bin: $(BASENAME).$(PREFIX1).t3x
	apertium-validate-interchunk $(BASENAME).$(PREFIX1).t3x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t3x $@

$(PREFIX1).t4x.bin: $(BASENAME).$(PREFIX1).t4x
	apertium-validate-interchunk $(BASENAME).$(PREFIX1).t4x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t4x $@

$(PREFIX1).t5x.bin: $(BASENAME).$(PREFIX1).t5x
	apertium-validate-postchunk $(BASENAME).$(PREFIX1).t5x
	apertium-preprocess-transfer $(BASENAME).$(PREFIX1).t5x $@


#
#	MODES FILES
#

$(PREFIX1).mode: modes.xml
	apertium-gen-modes modes.xml
	cp *.mode modes/

#
#	MISCELLANEOUS CONFIGURATION
#

apertium_sme_smadir=$(prefix)/share/apertium/apertium-$(PREFIX1)/
apertium_sme_modesdir=$(prefix)/share/apertium/modes/


apertium_sme_sma_DATA=$(PREFIX1).automorf.hfst \
		    $(PREFIX1).autobil.bin \
		    $(PREFIX1).autolex.bin \
		    $(PREFIX1).autogen.hfst \
		    $(PREFIX2).automorf.hfst \
		    $(PREFIX1).rlx.bin \
		    $(PREFIX1).t1x.bin \
		    $(PREFIX1).t2x.bin \
		    $(PREFIX1).t3x.bin \
		    $(PREFIX1).t4x.bin \
		    $(PREFIX1).t5x.bin \
		    $(PREFIX1).mode


CLEANFILES = -rf $(TARGETS_COMMON) modes

