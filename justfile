# List available recipes by default.
default: list

list:
	@just --list

decompress:
	zstd -d -f tests/DigitalTop.lut.blif.zstd -o tests/DigitalTop.lut.blif

test: decompress
	cargo test
