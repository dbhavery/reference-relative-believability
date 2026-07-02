# arXiv submission — copy-paste cheat sheet

Register at https://arxiv.org/user/register, then **Start New Submission**.
You can upload the **PDF directly** — no LaTeX required.

## File to upload
`reference-relative-believability-peer.pdf`
(If arXiv asks for source instead, upload `arxiv/reference-relative-believability-peer.tex` **and** the `arxiv/assets/` folder together.)

## Field-by-field

**Title**
```
Reference-relative believability in photoreal human avatars: synthetic identity as a systems constraint
```

**Authors**
```
Donald B. Havery
```

**Primary category:** `cs.HC` (Human-Computer Interaction)
**Cross-list:** `cs.GR` (Graphics), `cs.CV` (Computer Vision)

**License:** CC BY 4.0 (recommended — most open) or arXiv's default non-exclusive license.

**Comments** (optional field)
```
Framework and systems paper. Includes falsifiable hypotheses (H1-H6) and a
pre-registration-ready evaluation protocol. 1 figure. Companion code/figure:
https://doi.org/10.5281/zenodo.21138188
```

**Abstract** (paste as plain text)
```
Photoreal avatars are usually treated as renderer problems: make the generated human sharp enough, stable enough, and temporally coherent enough to pass as video. That account is incomplete. Avatar quality is judged relative to the reference implied by the product. For a known real person, the reference is the viewer's stored model of that person's appearance and motion. For a persistent synthetic character, the reference is the system's canonical identity state: face, body, voice, styling range, provenance, and continuity contract. For a one-off synthetic stranger, the reference is the broader human category. I define this dependency as reference-relative believability and use ground-truth drift for deviation from the applicable reference. The distinction yields testable predictions: familiarity-dependent rejection for known real people, continuity-dependent rejection for persistent synthetic identities, full-body exposure effects, and latency-fidelity tradeoffs between live interaction and close inspection. It also changes system design. The split is not known person versus invented person. It is high-fidelity identity path versus live interaction path. A prototype avatar engine implements this boundary with character registries, renderer routing, a local real-time talking-head loop, and separate high-fidelity identity-planning work for synthetic human rosters. The implementation is not perceptual validation, but it shows that the boundary is concrete enough to build.
```

## If arXiv asks for an endorsement

You'll get a message with an **endorsement code** and a link. To clear it, one
person who has recently published in `cs.HC` (or a related cs.* category) on
arXiv must go to https://arxiv.org/auth/endorse and enter your code.

Who can endorse you:
- A professor, postdoc, PhD student, or researcher you know who posts CS/HCI papers.
- A former classmate/colleague in academia.
- (Last resort, slow) a polite email to an author you cite, with the paper attached.

If you can't find an endorser: **you already have the Zenodo DOI**
(10.5281/zenodo.21138188), which is a real, permanent, citable publication.
arXiv is a nice-to-have on top, not a requirement.
