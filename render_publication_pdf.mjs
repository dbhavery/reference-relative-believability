import { pathToFileURL } from "node:url";
import { chromium } from "playwright";

const [, , htmlPath, pdfPath, chromePath] = process.argv;

if (!htmlPath || !pdfPath || !chromePath) {
  console.error("Usage: node render_publication_pdf.mjs <html> <pdf> <chrome>");
  process.exit(1);
}

const browser = await chromium.launch({
  executablePath: chromePath,
  headless: true,
});

try {
  const page = await browser.newPage({
    viewport: { width: 1100, height: 1400 },
    deviceScaleFactor: 1,
  });

  await page.goto(pathToFileURL(htmlPath).href, { waitUntil: "networkidle" });
  await page.emulateMedia({ media: "print" });
  await page.pdf({
    path: pdfPath,
    format: "Letter",
    printBackground: true,
    displayHeaderFooter: false,
    margin: {
      top: "0.72in",
      right: "0.72in",
      bottom: "0.72in",
      left: "0.72in",
    },
  });
} finally {
  await browser.close();
}
