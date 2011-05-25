# Package information

pkgid = agda-data-bindings

# Include the Agda makefile

export agdamakefileuri ?= https://github.com/agda/agda-makefile/raw/v0.0.5/Makefile
export agdamakefile ?= $(CURDIR)/build/share/make/agda-makefile-0.0.5
export CURL ?= curl

$(agdamakefile):
	$(CURL) --create-dir -o $@ $(agdamakefileuri)

include $(agdamakefile)

# Targets

.PHONY: install-agda install-html install-doc install clean veryclean

install-agda: $(agdadir)/Data/Bindings/Everything.agdai

install-html: $(htmldir)/Data.Bindings.Everything.html

install-doc:
	$(INSTALL) -D README $(docdir)
	$(INSTALL) -D LICENSE $(docdir)

install-bin: $(bindir)/Data/Bindings/Examples/HelloFour
	
install: install-agda install-html install-doc install-bin

clean:

veryclean:
	rm -rf $(builddir)
