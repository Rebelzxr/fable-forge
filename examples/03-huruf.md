# Example 03: Huruf, a type foundry

> Example only. Reconstructed from the public page at
> [dainer-ai-showcase.vercel.app/sites/huruf/](https://dainer-ai-showcase.vercel.app/sites/huruf/).
> The footer says "HURUF is a fictional foundry. The kinetics are real."

## Brief

A launch page for a Malay variable typeface. Type designers and brand studios need to see the font move, not read about it.

## Page job

- **Visitor:** a designer judging whether the typeface is worth licensing.
- **Primary action:** play with the weight axis, then type their own word.
- **Proof the page can show:** the font itself, live, at every weight.

## Direction note

```text
Page job:   a designer needs to feel the weight range; primary action is the weight slider.
Idea:       weight is force. The slider has mass, so the letters resist and then follow.
Anchors:    the word "huruf" filling the first screen with one letter in orange,
            near-black page, one accent colour, Malay words for each weight (Nipis to Padu).
Keep:       Malay first, English as the second line.
Not doing:  a font specimen grid in the first screen; the grid comes later.
```

## What was built

- Instrument Sans and Roboto Serif as the computed page fonts, with the showcased variable face in the hero.
- A weight control exposed as `role="slider"` with the label "Weight axis, berat, 100 to 900". Arrow keys move it as well as dragging.
- A playground for typing your own word, a cursor-reactive A to Z grid, and a named-weights section.

## Acceptance evidence

| Check | Result |
|---|---|
| Desktop 1440 x 900 screenshot | ![desktop](../assets/gallery/huruf-desktop.jpg) |
| Phone 390 x 844 screenshot | headline, subline and slider in the first screen ([image](../assets/gallery/huruf-phone.jpg)) |
| Horizontal overflow at 360 and 768 | none |
| Main interaction by keyboard | focused the slider and pressed the right arrow six times: `aria-valuenow` went from 400 to 640 |

**Open:** touch dragging, the "drag past 880" surprise and reduced-motion were not checked here.
