# Brochure content update

Updated: 2026-09-22

## Source policy

The eight user-supplied PDFs in `Introducing GL Turbo/` are the source for this update. The v2601 company profile takes precedence over the 2401 company overview for overlapping company, contact, and control-performance information. Document suffixes below identify the supplied versions; no publication month is inferred from them.

PDF page references count physical PDF pages from 1. Some pages contain multiple printed brochure panels or pages. Image-only GL, GA, and DT panels were inspected visually. Product artwork was extracted from the supplied PDFs; no replacement product imagery was generated.

Original PDFs are unchanged. Copies in `assets/brochures/` have the same SHA-256 hashes. Earlier website reference material remains available where the new documents do not supply a replacement; retention does not imply that the new brochures independently confirm every earlier claim.

## Sources and destinations

| Supplied source | Public PDF | Content updated |
| --- | --- | --- |
| `About GL-TURBO LLC_v2601.pdf` | `about-gl-turbo-2601.pdf` | Homepage, company overview, locations, contact, GPAC performance, GL airflow control |
| `About_GL-TURBO_EN_2401.pdf` | `about-gl-turbo-2401.pdf` | History, technical team, R&D, testing, service and spare parts; identified as an earlier overview in Resources |
| `GL_EN_2401.pdf` | `gl-2401.pdf` | GL page, homepage, product imagery and brochure downloads |
| `GA_EN_2401.pdf` | `ga-2401.pdf` | New GA Hybrid page, homepage, product imagery and brochure downloads |
| `DT_EN_2401.pdf` | `dt-2401.pdf` | New DT Maglev page, homepage, product imagery and brochure downloads |
| `GPAC_EN_2401.pdf` | `gpac-2401.pdf` | GPAC control page, wastewater application, homepage and control diagram |
| `DV_EN_2601.pdf` | `diamond-valve-2601.pdf` | Aeration valves page, homepage and product image |
| `MassTrol_EN_2601.pdf` | `masstrol-valve-2601.pdf` | Aeration valves page, homepage and product image |

All public PDF filenames in this table are relative to `assets/brochures/`.

## Principal replacements

| Subject | Earlier website | Updated content and evidence |
| --- | --- | --- |
| GL flow and pressure rise | Up to 120,000 m³/h; up to 3 bar | 1,700–150,000 m³/h; 0.1–2.0 bar, GL brochure p. 1 metric cover ranges |
| GL airflow control | Down to 40% | 45%–100% at constant pressure, v2601 company profile p. 1 |
| GL bearings | Generic sleeve bearings | Tilting-pad bearings, GL brochure p. 2 and v2601 profile p. 1 |
| GA family | Not presented | GA Hybrid, combining geared technology, a permanent magnet motor and VFD; 50–400 kW, 1,600–17,000 m³/h, 0.3–1.7 bar, GA pp. 1–2 |
| DT family | Not presented | DT Maglev with active magnetic bearings, inlet guide vanes and VFD; 55–400 kW, 1,900–13,800 m³/h, 0.4–0.9 bar; 30%–100% regulation, DT pp. 1–2 |
| Controls | Generic CS control system summary | GPAC process modeling, DO control, flow-based blower coordination, MOV control, dosing modules and BCT-Light, GPAC pp. 3, 5–7 |
| Valves | No product pages | Diamond Valve and MassTrol, including connection, electrical supply, pressure and temperature limits, each brochure pp. 1–2 |
| Company reach | 30+ countries presented as sales/service coverage | More than 200 wastewater projects across over 20 countries, v2601 p. 1. The updated figure describes installations, not sales-office coverage |
| Current operations | USA, China and Denmark manufacturing emphasis | Wuxi, Boston, Houston, Copenhagen, Leipzig and Bangalore, v2601 p. 1 |
| Boston address | Suite 420 | Suite 410, v2601 p. 1 footer |
| Timeline | Ended in 2017 | Added documented DT, Germany, India, GA and BioChem milestones through 2022, 2401 company overview p. 3 |
| Product downloads | Earlier GL / LS / MC engineering files | Eight local brochure downloads first; earlier engineering files and LS page explicitly labeled historical reference |

The homepage features GL, GA, DT, GPAC, Diamond Valve and MassTrol. Existing URLs remain valid. Added pages are `products-hybrid-turbo.html`, `products-maglev-turbo.html`, and `products-aeration-valves.html`. Product navigation is synchronized across all eight product pages.

The earlier LS information is retained for reference; the update makes no claim that the LS product has been discontinued. Packaged systems and application pages without replacement details retain their earlier content.

## Source conflicts and qualifications

- **GL pressure units:** the GL cover prints 2–35 PSI and 0.1–2.0 bar, which are not equivalent endpoints. Public specifications use the printed metric range only; no conversion or reconciled maximum was invented.
- **GL control ranges:** older documents include different minimum-flow values, including 35% in the GL brochure. The v2601 profile's 45%–100% range is used for current copy.
- **GA model range:** the cover maximum is 17,000 m³/h and 400 kW; the GA5 table lists 17,600 m³/h and 390 kW. Public family specifications use the cover ranges. The detailed model table is not transcribed. The ambiguous “more than 35%–105%” wording is not promoted as a website specification.
- **DT power:** the cover lists up to 400 kW; the detailed DT5 table reaches 380 kW. The website identifies cover family ranges. A source inlet-condition unit typo and a copied GA-Hybrid caption are not repeated.
- **GL document code:** the GL brochure footer unexpectedly contains `DT-2401`. Download identification follows the supplied GL filename and product title.
- **GPAC performance:** the v2601 profile reports DO within ±0.5 mg/L of setpoints and control accuracy above 95%. Website copy attributes these to operating experience and states that performance depends on the plant and operating conditions. Earlier >90%, case-specific >99%, and individual energy-saving results are not presented as universal guarantees.
- **BioChem acquisition:** current copy says acquisition of BioChem Technology, Inc.'s assets, following v2601. Conflicting 1977/1978 BioChem founding dates are omitted.
- **MassTrol accuracy:** ±1.5% is explicitly tied to 5 pipe diameters upstream and 3 downstream. The website does not promise that accuracy for arbitrary pipe layouts. Kv table entries are not relabeled as operating flow capacities.
- **Valve limits:** 0.17 MPa is identified as absolute rated pressure. DIN flange reference pressure is not substituted for the valve operating limit. Diamond's waveform graph is not summarized as an unconditional linear-flow guarantee.
- **Testing:** the earlier company overview p. 5 supports ASME PTC 10, ASME PTC 13 and ISO 5389 performance-test references. Standards references are not presented as independent product certification. Certificate expiry/validity is not independently established by this content update.
- **Older literature:** the original 2401 PDF downloads still contain the historical Suite 420 address. Website contact information follows v2601 Suite 410; the supplied files themselves were not edited.

## Other source locations

- 2401 company overview p. 2: founding and company background.
- 2401 company overview p. 4: technical team, combined experience and aerodynamic integration.
- 2401 company overview p. 5: testing facilities, methods and standards.
- 2401 company overview p. 6: lifecycle service, 24-hour response commitment, remote monitoring and spare parts.
- GPAC p. 3: feedforward biological process model; p. 5: blower coordination and BCT-Light; p. 6: dissolved oxygen control; p. 7: MOV and dosing.

## Validation

Completed validation:

- All 27 public HTML pages have valid local page, image, stylesheet and fragment references, one main heading and unique IDs.
- Chrome loaded all 27 pages at 1440 px and 390 px without horizontal page overflow, broken loaded images or JavaScript errors.
- All eight product pages identify exactly one current product navigation item.
- Mobile navigation, carousel next/dot controls and all eight brochure downloads work in Chrome.
- Homepage lazy-loaded images were scrolled into view and decoded successfully on mobile.
- All eight public PDF copies match the original SHA-256 hashes.
- `git diff --check` passes.

This is a static-site content update; no deployment or external publication is part of the change. The existing contact form still requires a submission backend, as noted in the earlier migration inventory.
