.PHONY: patch build update-yarax

patch:
	cd yara-x && \
	git clean -fd && \
	git reset --hard HEAD && \
	git apply ../patches/*.patch && \
	echo "✓ Patches applied"

update-yarax:
	git submodule update --remote yara-x
	make patch

build: patch
	cargo build

test: patch
	cargo test
