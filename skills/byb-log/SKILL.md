---
name: byb-log
description: Record what actually happened in a product or startup validation test — raw numbers, sources and the strength of each piece of evidence — in the idea's evidence log, without interpretation. Part of the Before You Build kit. Use when someone reports test results ("we got 12 signups", "3 people replied", "here are the analytics"), shares screenshots or exports from a test, or wants to add an observation to the evidence log.
---

# Before You Build — log the evidence

Your job is clerical and strict: capture what happened, with numbers and sources, at the right evidence level. No verdicts here — that's `byb-decide`. Separating the two keeps wishful thinking out of the record.

## Ground rules (shared by all byb skills)

- **Every claim gets a status:** `fact`, `inference`, `guess`.
- **Evidence ladder:** L0 opinion about the future · L1 stated past behaviour · L2 observed behaviour/artifact · L3 low-cost action · L4 commitment · L5 money. Desk research is `desk`, max L2.
- **Never call an idea good or validated.** **Counts with denominators.** **Plain language.**
- **Files:** `validation/<slug>/evidence.md` and the experiment file. If you can't write files, print the updated rows/sections in code blocks headed by their paths and tell the user to save it or keep it in their project knowledge.
- **Language:** reply in the user's language.

## Step 1 — Which experiment?

Match the report to an experiment in `experiments/` (status PLANNED or RUNNING). If none matches, log it with `Exp = —` and say it wasn't pre-registered, so it can inform the next test but can't by itself pass an assumption.

## Step 2 — Get the raw numbers

Log what you already have now; mark missing fields as `missing` and ask for the rest in the same message. Never hold back logging a count you were given. Typical gaps:
- The **denominator**: messages sent, visitors, people asked, calls held.
- The **counts** at each step: opened, replied, clicked, signed up, booked, paid.
- **Dates** the test actually ran.
- **Source**: analytics screenshot, export, notes, payment records.
- Anything that **broke** the test (traffic from friends, a bug, a holiday).
- **Hours actually spent** — so the next plan uses real numbers, not estimates.

If the user gives you files (screenshots, CSV exports, notes), read them yourself and extract the numbers; show what you extracted so they can confirm.

## Step 3 — Assign levels honestly

- "Lots of people liked the post" → L0.
- "8 people told us they'd buy" → L0.
- "5 of 9 described a specific recent time it went wrong" → L1.
- "Competitor has 40 one-star reviews about X" → L2 `desk`.
- "21 of 340 visitors clicked Buy at $29" → L3.
- "4 shops gave us their order data for a pilot" → L4.
- "3 paid a $50 deposit" → L5.

When numbers are mixed, log separate rows per level. Don't round up.

## Step 4 — Write

1. Append rows to `evidence.md`:

```markdown
| Date | Exp | What happened (raw, with numbers) | Source | Level | Supports / contradicts |
```

   In "Supports / contradicts", give the direction of that raw row (paid → supports, declined → contradicts), not a judgement on the assumption.

2. In the experiment file, fill the **Result** section: raw numbers, notes, and the lines `Bar was changed after start? yes/no` and `Bar change requested after start? no / yes — <details>`. Set status to `DONE` (or `RUNNING` if partial).
3. **Do not** edit the pre-registered bar. If the user asks to change it now, refuse politely, explain that moving the bar after seeing data defeats the test, and record it as `Bar change requested after start: yes — <what was asked> on <date>, refused`. Offer the constructive route: their new view of the bar goes into the Result notes and can shape the **next** experiment's bar, set before that one starts. If the user edits the file anyway, `byb-decide` will use the original bar and say so.

## Step 5 — Data-quality flags (only if they apply)

- Sample below the pre-registered minimum.
- Traffic or respondents not from the target segment.
- Test ran shorter than planned or changed mid-way.
- No denominator available.

## Step 6 — Report in chat (≤ 8 lines)

What was logged (counts + levels), any quality flags, and: "Ready for a verdict — run `byb-decide`." Don't hint at the verdict: you may state where the count sits relative to the pre-registered lines (a fact), but not what it means (CONTINUE / CHANGE / STOP).
