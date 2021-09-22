.PHONY: build build_pkg install remove clean


build: clean
	mkdir -p build/
	cp -r src/* build/


pkg: build
	mkdir -p pkg/
	cd build/ && zip -r ../pkg/unredirect@aunetx.zip .


install: build
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/unredirect@aunetx
	mkdir -p $(HOME)/.local/share/gnome-shell/extensions/unredirect@aunetx
	cp -r build/* $(HOME)/.local/share/gnome-shell/extensions/unredirect@aunetx/


remove:
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/unredirect@aunetx


clean:
	rm -rf pkg/ build/