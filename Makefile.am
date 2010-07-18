VERSION=0.1.0
LANG1=sme
LANG2=sma
PREFIX1=$(LANG1)-$(LANG2)
PREFIX2=$(LANG2)-$(LANG1)

BASENAME=apertium-$(PREFIX1)

TARGETS_COMMON = \
	$(PREFIX1).automorf.hfst \
	$(PREFIX1).autobil.bin \
	$(PREFIX1).autogen.hfst \
	$(PREFIX2).automorf.hfst \
	$(PREFIX1).rlx.bin \
	$(PREFIX1).lex.bin \
	$(PREFIX1).t1x.bin \
	$(PREFIX1).t2x.bin \
	$(PREFIX1).t3x.bin \
	$(PREFIX1).t4x.bin \
	$(PREFIX1).t5x.bin 

#
#	NORTHERN SÁMI TRANSDUCERS
#

# First we compile the twol and lexc files.
.deps/$(LANG1).twol.hfst: $(BASENAME).$(LANG1).twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -r -i $(BASENAME).$(LANG1).twol -o $@

.deps/$(LANG1).lexc.hfst: $(BASENAME).$(LANG1).lexc
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-lexc $(BASENAME).$(LANG1).lexc -o $@

.deps/$(BASENAME).$(LANG1).hfst: .deps/$(LANG1).lexc.hfst .deps/$(LANG1).twol.hfst dev/apertium.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-compose-intersect -l .deps/$(LANG1).lexc.hfst .deps/$(LANG1).twol.hfst -o $@

#
# The default form of the transducer is optimised
#
$(PREFIX1).automorf.hfst: .deps/$(BASENAME).$(LANG1).hfst dev/apertium.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-invert .deps/$(BASENAME).$(LANG1).hfst -o .deps/$(PREFIX1).automorf.hfst.tmp
	hfst-substitute -F dev/apertium.relabel -i .deps/$(PREFIX1).automorf.hfst.tmp -o .deps/$(PREFIX1).automorf.hfst
	hfst-lookup-optimize .deps/$(PREFIX1).automorf.hfst -o $@
	rm .deps/$(PREFIX1).automorf.hfst.tmp

#
#	SOUTH SÁMI TRANSDUCERS
#

.deps/$(LANG2).twol.hfst: $(BASENAME).$(LANG2).twol
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-twolc -r -i $(BASENAME).$(LANG2).twol -o $@

.deps/$(LANG2).lexc.hfst: $(BASENAME).$(LANG2).lexc
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-lexc $(BASENAME).$(LANG2).lexc -o $@

.deps/$(BASENAME).$(LANG2).hfst: .deps/$(LANG2).lexc.hfst .deps/$(LANG2).twol.hfst dev/apertium.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-compose-intersect -l .deps/$(LANG2).lexc.hfst .deps/$(LANG2).twol.hfst -o $@

#
# The default form of the transducer is optimised
#
$(PREFIX1).autogen.hfst: .deps/$(BASENAME).$(LANG2).hfst dev/apertium.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-substitute -F dev/apertium.relabel -i .deps/$(BASENAME).$(LANG2).hfst -o .deps/$(PREFIX1).autogen.hfst
	hfst-lookup-optimize .deps/$(PREFIX1).autogen.hfst -o $@

$(PREFIX2).automorf.hfst: .deps/$(BASENAME).$(LANG2).hfst dev/apertium.relabel
	if [ ! -d .deps ]; then mkdir .deps; fi
	hfst-invert .deps/$(BASENAME).$(LANG2).hfst -o .deps/$(PREFIX2).automorf.hfst.tmp
	hfst-substitute -F dev/apertium.relabel -i .deps/$(PREFIX2).automorf.hfst.tmp -o .deps/$(PREFIX2).automorf.hfst
	hfst-lookup-optimize .deps/$(PREFIX2).automorf.hfst -o $@
	rm .deps/$(PREFIX2).automorf.hfst.tmp

#
#	BILINGUAL DICTIONARY
#

.deps/$(BASENAME).$(PREFIX1).dix: $(BASENAME).$(PREFIX1).dix lexchoicebil.xsl
	if [ ! -d .deps ]; then mkdir .deps; fi
	xsltproc lexchoicebil.xsl $(BASENAME).$(PREFIX1).dix > $@

$(PREFIX1).autobil.bin: .deps/$(BASENAME).$(PREFIX1).dix
	apertium-validate-dictionary .deps/$(BASENAME).$(PREFIX1).dix
	lt-comp lr .deps/$(BASENAME).$(PREFIX1).dix $@

#
#	CONSTRAINT GRAMMARS
#

$(PREFIX1).rlx.bin: $(BASENAME).$(PREFIX1).rlx
	cg-comp $(BASENAME).$(PREFIX1).rlx $@

$(PREFIX1).lex.bin: $(BASENAME).$(PREFIX1).lex
	cg-comp $(BASENAME).$(PREFIX1).lex $@

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
		    $(PREFIX1).autogen.hfst \
		    $(PREFIX2).automorf.hfst \
		    $(PREFIX1).rlx.bin \
		    $(PREFIX1).lex.bin \
		    $(PREFIX1).t1x.bin \
		    $(PREFIX1).t2x.bin \
		    $(PREFIX1).t3x.bin \
		    $(PREFIX1).t4x.bin \
		    $(PREFIX1).t5x.bin \
		    $(PREFIX1).mode


CLEANFILES = -rf $(TARGETS_COMMON) modes

