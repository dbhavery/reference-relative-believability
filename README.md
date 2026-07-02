# Reference-relative believability in photoreal human avatars

Working paper + peer-review manuscript on **reference-relative believability**: the claim that a photoreal avatar's quality is judged against the *reference* implied by its task — a viewer's memory of a known real person, a system's canonical identity state for a persistent synthetic character, or the broad human category for a one-off stranger — not against pixels alone. The design consequence is an identity-contract router that splits a high-fidelity identity path from a low-latency live-interaction path.

*Author: D. B. Havery.*

## Two versions

| File | Purpose |
|---|---|
| `reference-relative-believability.md` | **Portfolio / research-note** essay (narrative register). |
| `reference-relative-believability-peer.md` | **Submission** manuscript (formal: related work, hypotheses H1–H6, evaluation protocol). |
| `reference-relative-believability-peer-anon.md` | **Anonymized** double-blind review copy of the submission manuscript (author + self-references stripped). Build with `build_peer_anon.ps1`. |

The `.md` files are the source of truth. HTML, PDF, and `arxiv/*.tex` are generated build artifacts.

## Build

Requires [pandoc](https://pandoc.org), Node.js, and Chrome or Edge (for headless PDF + figure rendering).

```powershell
# portfolio / research-note version
.\build_publication.ps1

# peer-review / submission manuscript
.\build_peer_review.ps1
```

Each script renders the figure SVG to PNG, runs pandoc `.md` → self-contained HTML, prints a PDF, and emits a LaTeX source for arXiv handoff. See `PUBLISHING.md` for the publication checklist.

## Figure

`assets/two-tier-avatar-engine.svg` is the source of the architecture diagram (embedded into each HTML at build time).

## License

MIT — see [`LICENSE`](LICENSE).
