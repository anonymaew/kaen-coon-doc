set quiet

dev:
  nix-shell -p mdbook --run "mdbook serve"

build:
  nix-shell -p mdbook --run "mdbook build"
  # find book -name 'toc*.js' -print0 | xargs -0 sed -i 's@if (link.href === current_page@if (link.href.replace(/\.html$$/, "") === current_page.replace(/\.html$$/, "")@g'

deploy: build
	rsync -avPh --delete book/ root@homelab:/var/lib/rancher/k3s/storage/pvc-61a4ef24-c4c1-49d0-bba9-404beed097cf_cpkku_kaen-coon-doc/kaen-coon/
