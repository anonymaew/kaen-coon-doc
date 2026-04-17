set quiet

dev:
	#!/usr/bin/env nix-shell
	#!nix-shell -i bash -p gettext mdbook mdbook-i18n-helpers
	# mdbook serve
	MDBOOK_BOOK__LANGUAGE=th mdbook serve -d book/th

build:
	#!/usr/bin/env nix-shell
	#!nix-shell -i bash -p gettext mdbook mdbook-i18n-helpers
	mdbook build
	MDBOOK_BOOK__LANGUAGE=th mdbook build -d book/th
	# find book -name 'toc*.js' -print0 | xargs -0 sed -i 's@if (link.href === current_page@if (link.href.replace(/\.html$$/, "") === current_page.replace(/\.html$$/, "")@g'

_gettext_init:
	#!/usr/bin/env nix-shell
	#!nix-shell -i bash -p gettext mdbook mdbook-i18n-helpers
	MDBOOK_OUTPUT='{"xgettext": {}}' mdbook build -d po

gettext_init: _gettext_init
	#!/usr/bin/env nix-shell
	#!nix-shell -i bash -p gettext mdbook mdbook-i18n-helpers
	msginit -i po/messages.pot -l th -o po/th.po

translate_update: _gettext_init
	#!/usr/bin/env nix-shell
	#!nix-shell -i bash -p gettext mdbook mdbook-i18n-helpers
	msgmerge --update po/th.po po/messages.pot

translate_report:
	#!/usr/bin/env nix-shell
	#!nix-shell -i bash -p gettext mdbook mdbook-i18n-helpers
	i18n-report report --help #report.html po/th.po
