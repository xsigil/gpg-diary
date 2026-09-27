PREFIX ?= $(HOME)/.local
BINDIR = $(PREFIX)/bin

BIN = bin/gpg-diary

.PHONY: all install uninstall test

all:
	@echo "Run 'make install' to install gpg-diary."

install:
	@mkdir -p $(BINDIR)
	install -m 755 $(BIN) $(BINDIR)/gpg-diary

uninstall:
	rm -f $(BINDIR)/gpg-diary

test:
	@echo "==> Running syntax check..."
	bash -n $(BIN)
	./$(BIN) --help > /dev/null
	@echo "[✓] Pass"
