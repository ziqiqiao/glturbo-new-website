# Legacy Content Inventory

Source site: https://www.glturbo.com/
Inventory date: 2026-09-03

## Migration Status

The first static iteration is a six-page site: `index.html`, `about.html`, `products.html`, `applications.html`, `resources.html`, and `contact.html`. Primary navigation opens these pages instead of scrolling through one long homepage.

About Us now uses separate HTML pages for each topic. All About Us navigation links load the corresponding page, with the current topic marked in the navigation, breadcrumb, and page heading:

- Company: `about.html` (the default About Us entry)
- Why GLTURBO: `about-why-glturbo.html`
- Research & Development: `about-research-development.html`
- Testing & Certifications: `about-testing-certifications.html`
- History: `about-history.html`
- News: `about-news.html`
- Events: `about-events.html`
- Careers: `about-careers.html`

Each page includes only its own topic content. About Us uses shared `about.css` styles; its topic navigation does not use same-page fragment links.

Products, Applications, and Resources also use separate topic pages, styled by `category.css`. Their category navigation, page headings, breadcrumbs, and active links identify the current topic. Homepage product links and the About Us service link point directly to these pages.

- Products: `products.html` (GL Geared Turbo), `products-multistage-turbo.html`, `products-control-systems.html`, `products-packaged-systems.html`, `products-customer-service.html`.
- Applications: `applications.html` (Water & Wastewater), `applications-vacuum.html`, `applications-petro-chemical.html`, `applications-utility-power.html`, `applications-mining.html`, `applications-environmental.html`, `applications-industrial.html`.
- Resources: `resources.html` (Product Data Sheets), `resources-media-library.html`. The existing performance curve, PDF, and CAD download links remain on the Product Data Sheets page.

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
