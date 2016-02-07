
PACKAGE = ppx_package
LIB = randomPackage

INSTALL = META \
	_build/src/$(LIB).cmi \
	_build/src/$(PACKAGE).native \
	_build/src/$(LIB).cma \
	_build/src/$(LIB).cmxa \
	_build/src/$(LIB).a

OCB_FLAGS = -use-ocamlfind -I src -I test

OCB = ocamlbuild $(OCB_FLAGS)

all: runtime ppx

.PHONY: runtime ppx test clean

runtime:
	$(OCB) $(LIB).cma
	$(OCB) $(LIB).cmxa

ppx:
	$(OCB) $(PACKAGE).native

clean:
	$(OCB) -clean

# opam

.PHONY: install remove up down

install: all
	ocamlfind install $(PACKAGE) $(INSTALL)

remove:
	ocamlfind remove $(PACKAGE)

up: clean all
	opam pin add $(PACKAGE) . -n -y
	opam install $(PACKAGE) --verbose

down:
	opam remove $(PACKAGE)
	opam pin remove $(PACKAGE)
