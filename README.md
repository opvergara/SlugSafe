# LungSafe Chile (IRA–IPA)

**LungSafe Chile** is an interactive, map‑centric dashboard/flyer to explore **asbestos risk (IRA)** and **community prioritization (IPA)** in Chile.

Runs 100% in the browser. Upload `.xlsx`/`.csv` with:

```
Este, Norte, IRA, CAPACITACION
```

Features:
- KPI cards
- Plotly donut charts (title-safe, mobile friendly)
- Leaflet map with two layers:
  - **IRA**: pastel color circles
  - **IPA**: shape markers (triangle, circle, diamond, square)
- Custom legends
- Searchable table
- Print/Export to PDF
- Optional PWA (offline) via `sw.js` + `manifest.webmanifest`

## Live (GitHub Pages)
Once enabled on **Settings → Pages**:
```
https://opvergara.github.io/SlugSafe/
```

## Data Ownership
The **software** is released under MIT, but **all datasets, input files and IRA/IPA geospatial data are the exclusive property of Omar Patricio Vergara Gonzalez**.  
MIT applies **only to the code**, **not to the data**. Official datasets are not distributed here and cannot be used without explicit permission.

## Local Usage
Open `index.html` in your browser and upload your file. Select UTM zone (default 19S).

## Tech
Leaflet · Plotly · proj4 · PapaParse · SheetJS/XLSX · HTML/JS/CSS

## License
MIT © 2026 Omar Patricio Vergara Gonzalez
