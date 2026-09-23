# Changelog

## 1.0.0 (2026-09-23): first public version

This is the first version published for anyone to install. The method, the 30-item template-tells list and the acceptance rules are unchanged in substance, adapted from the version Dainer uses. The edits below make it usable by a stranger.

### Skill text
- **Frontmatter:** the `description` now says when to use the skill (design or redesign a page, fix how a page looks or behaves, carry an approved direction into code, check whether a page looks generic). `license` now names Apache-2.0.
- **New "How to start" section** in `SKILL.md`: six steps from reading the brief to the final report, plus two copy-paste Playwright commands for a first render check.
- **New direction-note template** so the "short direction" step has a concrete shape (page job, idea, anchors, keep, not doing).
- **New end-of-task report template** (artifact, mode, seen, exercised, tells, open, next) replacing a prose description of what to return.
- **Generalised setup-specific wording:** references to the author's own tools, providers and review routing now point to "the project's own instructions". "The user's latest scope" governs. Internal history notes ("replaces the old Fable DNA", "the old motion-spec", the date the tells list was added) were rewritten as plain guidance.
- **`references/acceptance.md`:** added example capture commands for 390, 768 and 1440 widths and a one-line horizontal-overflow check.
- **`references/template-tells.md`:** the heading became "The 30 tells" and the opening line was rewritten in neutral wording. The 30 items themselves are unchanged.
- **`references/motion.md`:** timing examples kept, reworded as starting points.
- British/Malaysian spelling in the new text (behaviour, authorise).

### Repo
- `install.sh` with the same pattern as [dainer-design-skills](https://github.com/Rebelzxr/dainer-design-skills): defaults to `~/.claude/skills`, takes another target folder, leaves an existing install alone unless you pass `--force`.
- `examples/` with three worked examples reconstructed from public concept studies, each with acceptance evidence checked against the live page.
- README with a gallery of public sites from Dainer's studio, a scroll GIF and a flow diagram in `assets/`.
- `NOTICE` was rewritten for public readers: it names the upstream by URL and licence, credits its authors, and states this repo is Dainer's published version. `LICENSE.txt` is unchanged.
