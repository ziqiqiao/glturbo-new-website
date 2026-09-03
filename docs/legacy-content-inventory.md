# Legacy Content Inventory

Source site: https://www.glturbo.com/
Inventory date: 2026-09-03

## Migration Status

The first static iteration is a six-page site: `index.html`, `about.html`, `products.html`, `applications.html`, `resources.html`, and `contact.html`. Primary navigation opens these pages instead of scrolling through one long homepage.

The user-supplied `GL-TURBO蓝字无底.png` is copied to `assets/brand/glturbo-logo.png` and is the only logo displayed in the new site header and footer.

The legacy site crawl downloaded 111 image and image-support files into `assets/legacy/` (approximately 21 MB), including assets referenced from the old CSS. All content imagery is used on a relevant page or in the Resources media library. Old logo files, favicon variants, carousel controls, and layout spacer images remain archived but are intentionally not displayed. `tools/download-legacy-assets.sh` reproduces the download from the audited page list.

Preserved in layout:

- Homepage positioning and six primary modules
- About/company story
- Why GL-TURBO message
- Research and Development
- Testing and Certifications
- Product families: GL, LS, CS, PS, Customer Service
- Product subtopics: core technology, package systems, model/data performance, process control, standard/custom packages
- Application markets and application lists
- News/press release summary
- Careers contact
- Contact form fields
- Global location/contact information

Deferred for later phases:

- New company photography and videos
- Rebuilding the old interactive hover diagrams
- PDF/cutsheet/CAD file migration
- Form submission backend

## Public URL Map

Homepage:

- https://www.glturbo.com/

About:

- https://www.glturbo.com/about_us.php?pg=company
- https://www.glturbo.com/about_us.php?pg=company&sub=rnd
- https://www.glturbo.com/about_us.php?pg=company&sub=tnc
- https://www.glturbo.com/about_us.php?pg=why_gl_turbo
- https://www.glturbo.com/about_us.php?pg=news
- https://www.glturbo.com/about_us.php?pg=events
- https://www.glturbo.com/about_us.php?pg=careers

Products:

- https://www.glturbo.com/products.php?pg=gl_gt
- https://www.glturbo.com/products.php?pg=gl_gt&sub=glgt_core
- https://www.glturbo.com/products.php?pg=gl_gt&sub=glgt_pack_sys
- https://www.glturbo.com/products.php?pg=gl_gt&sub=glgt_mdp
- https://www.glturbo.com/products.php?pg=ls_mst
- https://www.glturbo.com/products.php?pg=ls_mst&sub=ls_core
- https://www.glturbo.com/products.php?pg=ls_mst&sub=ls_pack_sys
- https://www.glturbo.com/products.php?pg=ls_mst&sub=ls_mdp
- https://www.glturbo.com/products.php?pg=contr_sys
- https://www.glturbo.com/products.php?pg=contr_sys&sub=cs_blw_cntl_pnl
- https://www.glturbo.com/products.php?pg=contr_sys&sub=cs_prs_seq_cntl
- https://www.glturbo.com/products.php?pg=contr_sys&sub=cs_mtr_str_drv
- https://www.glturbo.com/products.php?pg=pack_systems
- https://www.glturbo.com/products.php?pg=pack_systems&sub=ps_stand
- https://www.glturbo.com/products.php?pg=pack_systems&sub=ps_cust
- https://www.glturbo.com/products.php?pg=service_prod

Applications:

- https://www.glturbo.com/applications.php?pg=wnw
- https://www.glturbo.com/applications.php?pg=vac_sys
- https://www.glturbo.com/applications.php?pg=petro_chemical
- https://www.glturbo.com/applications.php?pg=power
- https://www.glturbo.com/applications.php?pg=mining
- https://www.glturbo.com/applications.php?pg=environmental
- https://www.glturbo.com/applications.php?pg=industrial

Resources and contact:

- https://www.glturbo.com/resources.php?pg=prod_data
- https://www.glturbo.com/contact.php
- https://www.glturbo.com/contact.php?pg=global_reps

## Notes

- The old `resources.php?pg=prod_data` route returned `404 Not Found` during this pass, but the section remains represented in the new layout.
- The old `events` page contains a title area but no event listings in the captured public text.
- Some product subpages rely mainly on images or hover interactions; their page titles and navigation entries are preserved in the migration map.
- The old site exposes a press release PDF path: `press_releases/GL-TURBO-Amagervaerket-Power-Station-FGD2.pdf`.
