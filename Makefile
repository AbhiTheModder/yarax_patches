.PHONY: patch update-yarax

patch:
	cd yara-x && \
	git clean -fd && \
	git reset --hard HEAD && \
	git apply ../patches/*.patch && \
	echo "✓ Patches applied"

update-yarax:
	git submodule update --init yara-x
	make patch
