#!/usr/bin/env bash
set -euo pipefail

site_root="https://www.glturbo.com"
asset_root="assets/legacy"
page_cache=".legacy-pages"

pages=(
  "index.php"
  "about_us.php?pg=company"
  "about_us.php?pg=company&sub=rnd"
  "about_us.php?pg=company&sub=tnc"
  "about_us.php?pg=why_gl_turbo"
  "about_us.php?pg=news"
  "about_us.php?pg=events"
  "about_us.php?pg=careers"
  "products.php"
  "products.php?pg=gl_gt"
  "products.php?pg=glgt_core"
  "products.php?pg=glgt_pack_sys"
  "products.php?pg=glgt_mdp"
  "products.php?pg=ls_mst"
  "products.php?pg=ls_core"
  "products.php?pg=ls_pack_sys"
  "products.php?pg=ls_mdp"
  "products.php?pg=contr_sys"
  "products.php?pg=cs_blw_cntl_pnl"
  "products.php?pg=cs_prs_seq_cntl"
  "products.php?pg=cs_mtr_str_drv"
  "products.php?pg=pack_systems"
  "products.php?pg=ps_stand"
  "products.php?pg=ps_cust"
  "products.php?pg=service_prod"
  "applications.php?pg=wnw"
  "applications.php?pg=vac_sys"
  "applications.php?pg=petro_chemical"
  "applications.php?pg=power"
  "applications.php?pg=mining"
  "applications.php?pg=environmental"
  "applications.php?pg=industrial"
  "resources_and_downloads.php?pg=prod_data_sheets"
  "contact.php?pg=contact_us"
  "contact.php"
  "map.php?pg=map"
)

mkdir -p "$asset_root" "$page_cache"
: > "$page_cache/image-paths.txt"

for page in "${pages[@]}"; do
  cache_name=$(printf '%s' "$page" | tr '?&=/' '____')
  curl --compressed --fail --silent --show-error --location \
    --user-agent 'Mozilla/5.0' "$site_root/$page" \
    --output "$page_cache/$cache_name.html"
done

rg --no-filename --only-matching \
  'images/+[A-Za-z0-9_./%+ -]+\.(avif|gif|jpe?g|png|svg|webp)' \
  "$page_cache"/*.html \
  | sed -E 's#images/+#images/#; s# +$##' \
  | sort -u > "$page_cache/image-paths.txt"

cat >> "$page_cache/image-paths.txt" <<'EOF'
css/ajxmenu_files/top.gif
images/Bullet-Black.png
images/Bullet-White.png
images/GLTbackground-imagesl.jpg
images/loading.gif
images/next_button.png
images/prev_button.png
images/shadowLeft.png
images/shadowRight.png
images/shadowTile.png
images/video.png
images/worldmap-with-locations.png
scripts/gradient.svg
EOF

sort -u -o "$page_cache/image-paths.txt" "$page_cache/image-paths.txt"

while IFS= read -r image_path; do
  [[ -z "$image_path" ]] && continue
  destination="$asset_root/$image_path"
  mkdir -p "$(dirname "$destination")"
  curl --compressed --fail --silent --show-error --location \
    --user-agent 'Mozilla/5.0' "$site_root/$image_path" \
    --output "$destination" || printf 'FAILED %s\n' "$image_path" >&2
done < "$page_cache/image-paths.txt"

find "$asset_root" -type f -print | sort
