# GNOME Shell Extension - Disable unredirect fullscreen windows

[<img src="https://github.com/aunetx/files_utils/raw/master/get_it_on_gnome_extensions.png" height="100" align="right">](https://extensions.gnome.org/extension/4509/disable-unredirect-fullscreen-windows/)

Disables unredirect fullscreen windows in gnome-shell to prevent artifacts when
in fullscreen.

This version makes sure the unredirect option is not re-enabled automatically by
the shell; this is a fork from
[original extension by kazysmaster](https://github.com/kazysmaster/gnome-shell-extension-disable-unredirect).

## Install

### From extensions.gnome.org

It is recommended to download the extension from
[extensions.gnome.org](https://github.com/kazysmaster/gnome-shell-extension-disable-unredirect).

### From source

To install from github:

```sh
git clone https://github.com/aunetx/gnome-shell-extension-disable-unredirect
cd gnome-shell-extension-disable-unredirect
make install
```

Then press ALT-F2 and enter `r` and press enter to restart gnome-shell (or under
Wayland, logout and login again).

## License

This program is distributed under the terms of the GNU General Public License,
version 2 or later.
