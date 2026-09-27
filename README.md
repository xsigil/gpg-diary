# gpg-diary

Minimalist UNIX diary and notes encryption CLI backed by GnuPG.

Consolidates snippet-based encryption workflows into a single POSIX-compliant interface.

## Installation

```sh
make install
```

## Configuration

Add your GPG Key ID to your shell configuration:

```sh
export DIARY_KEYID="YOUR_GPG_KEY_ID"
export DIARY_DIRECTORY="$HOME/.local/share/diary"  # Optional
```

## Usage

# Add entry from stdin
```sh
echo "Confidential log entry" | gpg-diary add
```

# Add an existing file
```sh
gpg-diary add report.pdf


# List and read entries
```sh
gpg-diary list
gpg-diary read


# Decrypt, edit in $EDITOR, and re-encrypt
```sh
gpg-diary edit 2026-09-27_164500.txt.gpg
```

## License

MIT
