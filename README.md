# GNOME Shell Extension - Disable unredirect fullscreen windows

Disables unredirect fullscreen windows in gnome-shell to prevent artifacts when
in fullscreen.

This version makes sure the unredirect option is not re-enabled automatically by
the shell; this is a fork from
[original extension by kazysmaster](https://github.com/kazysmaster/gnome-shell-extension-disable-unredirect).

## Install from source

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
