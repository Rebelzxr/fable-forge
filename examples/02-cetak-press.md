# Example 02: Cetak & Sons, a letterpress shop

> Example only. Reconstructed from the public page at
> [dainer-ai-showcase.vercel.app/sites/cetak-press/](https://dainer-ai-showcase.vercel.app/sites/cetak-press/).
> The footer says "A fictional shop. The craft is real."

## Brief

A site for an old letterpress printer in George Town, Penang, that takes orders for wedding cards and small print runs. The risk is a generic "craft business" page with stock photos of ink rollers.

## Page job

- **Visitor:** a couple or small business choosing a printer.
- **Primary action:** try the press, then order a print.
- **Proof the page can show:** what the shop prints and how letterpress works. The numbers in the hero (founding year, count of sorts) are fiction inside a labelled concept. The skill rule is that a real client page never invents them.

## Direction note

```text
Page job:   a customer needs to trust the craft and see what can be printed; primary action is Type a line.
Idea:       the hero is the composing bench. You type, the letters sit mirrored in the stick, you pull a proof.
Anchors:    big Bitter serif headline with one blue italic word ("lead"), paper-coloured page,
            a wooden type case that looks and works like one.
Keep:       the real vocabulary of the trade: sort, nick, upper case, composing stick.
Not doing:  stock photographs. Every mark is drawn in code.
```

## What was built

- Type is Bitter for headlines and Rubik for body text (computed fonts confirmed).
- A working composing bench: a text input feeds the composing stick, which shows the typed letters as mirrored sorts. "Pull the press" produces a proof you can download as a PNG.
- An "Anatomy of a sort" section that explains the parts of a piece of type, and a "What we pull" product list.

## Acceptance evidence

| Check | Result |
|---|---|
| Desktop 1440 x 900 screenshot | ![desktop](../assets/gallery/cetak-press-desktop.jpg) |
| Phone 390 x 844 screenshot | headline, story and the type case visible ([image](../assets/gallery/cetak-press-phone.jpg)) |
| Horizontal overflow at 360 and 768 | none |
| Main interaction: type a line | input set to `SELAMAT PAGI`; the composing stick then held the letters S, E, L, A, M, A, T, P, A, G, I |

**Open:** the proof download, keyboard order through the type case and 200% zoom were not checked here.
