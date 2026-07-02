# Submission roadmap — peer-review manuscript

Target file: `reference-relative-believability-peer.md` (+ `arxiv/reference-relative-believability-peer.tex`).

## How to position it

This is a **framework + systems paper**, not an empirical user study.
Its evidence is (1) the reference-relative believability framework, (2) six
falsifiable hypotheses (H1–H6) with a complete evaluation protocol, and
(3) a **working real-time avatar engine** (Whisper→Ollama→Piper→Ditto,
TensorRT real-time tier, streaming). Lead with the working system —
that is the contribution that clears a systems/demo bar without a user study.

Do **not** aim it at a flagship empirical-HCI full-paper track (CHI-style):
those reviewers require the human-subjects study that measures H1–H6. That
study is the one missing piece, and only that tier needs it.

## Step 1 — arXiv (do this first; no deadline)

The immediate, appropriate home. arXiv is a preprint server, not peer review;
it accepts framework/systems papers, gives a permanent citable ID, and
timestamps the idea.

1. Create an account at https://arxiv.org (if none).
2. First submission to **cs.HC** may require an **endorsement** — an existing
   arXiv author in cs.HC vouches for you. Request via the submission flow;
   ask a co-author/colleague who has published to cs.HC if prompted.
3. Upload the self-contained package: `arxiv/reference-relative-believability-peer.tex`
   **together with** `arxiv/assets/` (the figure). arXiv compiles LaTeX server-side.
4. Categories: **cs.HC** primary; cross-list **cs.GR**, **cs.CV**.
5. After it posts, add the arXiv ID/link to this repo's README and to dbhavery.dev.

## Step 2 — a peer-reviewed systems / demo venue

Status as of 2026-07-02 (verify exact dates on each CFP — they move yearly):

| Venue | Fit | Status / timing |
|---|---|---|
| **IEEE VR 2027** (Melbourne) | Avatars, presence, real-time systems + strong demo track | CFP not yet posted; historically **papers ~Nov 2026**. **Upcoming — best target.** |
| **IEEE AIxVR 2027** | AI × VR, systems | Feb 2027 conf; deadline likely **fall 2026**. Upcoming. |
| **ISMAR 2026** | AR/VR systems + demos | Oct 2026 conf; paper deadlines ~June — **likely closed**; check demo/late tracks. |
| **ACM IVA 2026** (Puebla) | *The* virtual-humans venue | **Closed** (papers Apr, posters Jun 22, 2026). Aim **IVA 2027**. |
| **ACM CUI 2026** (Bremen) | Conversational agents | **Closed** (papers Feb 2026; conf is Jul 2026). Aim **CUI 2027**. |
| **ACM Multimedia** demo track | Real-time media systems | Main deadlines ~spring; check the year's demo/late-breaking track. |
| **SIGGRAPH / SIGGRAPH Asia — Real-Time Live / demos** | Real-time avatar showcase | Strong fit for the live engine; deadlines ~spring/early-summer. |

Recommended: **arXiv now**, then submit to **IEEE VR 2027** (or **AIxVR 2027**)
when its CFP opens this fall, with **IVA 2027 / CUI 2027** as the next-cycle
virtual-humans/conversational homes.

## Prep before a reviewed venue

- **Anonymize** a review copy: most tracks require double-blind. Strip
  "D. B. Havery" and soften first-person self-references ("a private Avatar
  Engine" → neutral phrasing) for the submitted PDF; keep the named version
  for arXiv/portfolio.
- **Page/format:** match the venue template (IVA = ACM SigConf, 4–8 pp;
  IEEE VR = IEEE VGTC). The Pandoc `.tex` is a starting point, not final format.
- **ACM authorship note:** ACM venues (e.g. CUI) bar AI systems as authors or
  citable sources — the paper is human-authored, so this is fine; just don't
  cite an AI tool as a source.
- If you later target a flagship empirical venue, run a pilot on **H1**
  (familiarity gradient) or **H4** (continuity-contract penalty) — the two
  cheapest to test with existing renderers.
