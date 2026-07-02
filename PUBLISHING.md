# Publishing checklist

This repository contains the public paper package for:

**Reference-relative believability in photoreal human avatars.**

Two versions are maintained: a narrative portfolio / research-note essay
(`reference-relative-believability.*`) and a formal submission manuscript
(`reference-relative-believability-peer.*`).

## Build

From the repo root:

```powershell
# portfolio / research-note version
.\build_publication.ps1

# peer-review / submission manuscript
.\build_peer_review.ps1
```

Requires pandoc, Node.js, and Chrome or Edge.

Outputs (portfolio version shown; `-peer` variants for the manuscript):

- `reference-relative-believability.html` — self-contained web version.
- `reference-relative-believability.pdf` — print-ready PDF generated from the web version.
- `arxiv/reference-relative-believability.tex` — LaTeX source generated for arXiv/manual cleanup.
- `arxiv/assets/two-tier-avatar-engine.png` — figure, copied in so the arXiv package is self-contained.

## Publish targets

Recommended order:

1. Publish the HTML/PDF on `dbhavery.dev` as a project research note.
2. Link it from the Avatar Engine portfolio case study.
3. Keep the peer manuscript separate from the portfolio version.
4. Submit a cleaned LaTeX source package to arXiv or a workshop after final author review.

## Before arXiv

- Citations verified against arXiv/publishers (all references confirmed real, 2026-07-02).
- The `arxiv/` folder is self-contained: upload the `.tex` together with `arxiv/assets/`.
- `.tex` is Pandoc-generated — skim for rough edges before submission (LaTeX compiles server-side on arXiv).
- Category choice: `cs.HC` primary; `cs.GR` and `cs.CV` cross-list candidates.
- The submission manuscript is a framework + protocol paper with no empirical study; target a
  preprint/workshop, or add a pilot before a reviewed venue.
