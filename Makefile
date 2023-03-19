.PHONY: build build_pkg install remove clean


build: clean
	mkdir -p build/
	cp -r src/* build/


pkg: build
	mkdir -p pkg/
	cd build/ && zip -r ../pkg/unredirect@nullprice.zip .


install: build
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/unredirect@nullprice
	mkdir -p $(HOME)/.local/share/gnome-shell/extensions/unredirect@nullprice
	cp -r build/* $(HOME)/.local/share/gnome-shell/extensions/unredirect@nullprice/


remove:
	rm -rf $(HOME)/.local/share/gnome-shell/extensions/unredirect@nullprice


clean:
	rm -rf pkg/ build/