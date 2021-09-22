'use strict';

const { Meta, GLib } = imports.gi;


class Extension {
	constructor() { }

	enable() {
		this.enabled = true;
		this.disable_unredirect();

		// add a 5 minutes timeout to disable again
		GLib.timeout_add(GLib.PRIORITY_DEFAULT, 300000, () => {
			if (this.enabled) {
				this.disable_unredirect();
				return GLib.SOURCE_CONTINUE;
			} else {
				return GLib.SOURCE_REMOVE;
			}
		});
	}

	disable_unredirect() {
		Meta.disable_unredirect_for_display(global.display);
	}

	disable() {
		Meta.enable_unredirect_for_display(global.display);
		this.enabled = false;
	}
}


function init() {
	return new Extension();
}