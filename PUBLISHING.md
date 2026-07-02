# Publishing checklist

This folder contains the public paper package for:

**Reference-relative believability: identity, realism, and interactivity in photoreal human avatars**

## Build

From the repo root:

```powershell
.\paper\build_publication.ps1
```

Outputs:

- `paper/reference-relative-believability.html` — self-contained web version.
- `paper/reference-relative-believability.pdf` — print-ready PDF generated from the web version.
- `paper/arxiv/reference-relative-believability.tex` — LaTeX source generated for arXiv/manual cleanup.

Peer-review manuscript build:

```powershell
.\paper\build_peer_review.ps1
```

Outputs:

- `paper/reference-relative-believability-peer.html` — self-contained peer-review manuscript web version.
- `paper/reference-relative-believability-peer.pdf` — plain preprint-style PDF.
- `paper/arxiv/reference-relative-believability-peer.tex` — LaTeX handoff for venue/arXiv cleanup.

## Publish targets

Recommended order:

1. Publish the HTML/PDF on `dbhavery.dev` as a project research note.
2. Link it from the Avatar Engine portfolio case study.
3. Keep the peer manuscript separate from the portfolio version.
4. Submit a cleaned LaTeX source package to arXiv or a workshop after final author review.

## Required before arXiv

- Verify every citation one last time.
- Replace any generated LaTeX rough edges from Pandoc.
- Confirm the category choice: `cs.HC` primary; `cs.GR` and `cs.CV` cross-list candidates.
- Decide whether to keep the architecture figure in the arXiv source or submit the text-only version.
