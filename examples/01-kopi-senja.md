# Example 01: Kopi Senja, a kopitiam at dusk

> Example only. Reconstructed from the public page at
> [dainer-ai-showcase.vercel.app/sites/kopi-senja/](https://dainer-ai-showcase.vercel.app/sites/kopi-senja/).
> The page labels itself "a DAINER.AI concept study". It is not a real shop, and the address on the page is made up.

## Brief

A landing page for a family kopitiam (Malaysian coffee shop) on a Kuala Lumpur corner. Visitors are locals and tourists deciding where to sit this evening. They need three things: what is on the menu, where the shop is, and when it is open.

## Page job

- **Visitor:** someone nearby, often on a phone, deciding where to go.
- **Primary action:** "See the menu", with "Find the corner" as the second.
- **Proof the page can show:** the menu, address, opening hours. Because this is a labelled concept, the founding year and family story are part of the concept, and the footer labels the page a concept study. On a real client site those facts would have to come from the owner.

## Direction note

```text
Page job:   a passer-by needs the menu, the address and the hours; primary action is See the menu.
Idea:       dusk is the product. Drag the sun down and the shop's neon comes on.
Anchors:    stacked serif headline in four lines, the lit shopfront on the right,
            warm dusk gradient, one jade accent for the neon and the italic "senja".
Keep:       real menu words in Malay (kaya bakar, telur separuh masak).
Not doing:  photographs; the whole shop is drawn in code.
```

## What was built

- A single-page site. Type is DM Serif Display for headlines and Karla for body text (computed fonts confirmed in the browser).
- A draggable sun exposed as a real control: a `button` with `role="slider"` and the label "Time of day at Kopi Senja". The time pill reads the current hour and the sky, windows and neon follow it.
- Menu, story and "Find the corner" sections with hours in a plain table.

## Acceptance evidence

| Check | Result |
|---|---|
| Desktop 1440 x 900 screenshot | ![desktop](../assets/gallery/kopi-senja-desktop.jpg) |
| Phone 390 x 844 screenshot | headline, body, both buttons in the first screen ([image](../assets/gallery/kopi-senja-phone.jpg)) |
| Horizontal overflow at 360 and 768 | none (`scrollWidth` equals `clientWidth` at both) |
| Main interaction: drag the sun | time pill changed from `2.14 PM · TENGAH HARI` to `8.08 PM · SENJA`; neon and windows lit ([after drag](../assets/examples/kopi-senja-after-drag.jpg)) |
| Scroll through the whole page | [scroll recording](../assets/kopi-senja-scroll.gif) |

**Open:** keyboard control of the sun, 200% zoom and reduced-motion were not checked in this reconstruction. The template-tells count was not scored here.
