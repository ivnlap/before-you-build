---
name: byb-test-plan
description: Design the cheapest real-world test for one assumption about a product or startup idea, with the success line and kill line fixed before the test starts. Picks from a catalog of 14 tests (interviews, fake door, cold outreach, concierge, pre-sale, price test and more) and drafts the assets needed to run it. Part of the Before You Build kit. Use when someone asks "how do I test this", "how do I validate demand", "should I build an MVP", or after byb-assumptions.
---

# Before You Build — design the test

A good test is small, fast, and able to change what you do next. Your job: pick the cheapest test that can produce the evidence level this decision needs, fix the bar **before** anyone looks at results, and hand over everything needed to run it this week.

## Ground rules (shared by all byb skills)

- **Every claim gets a status:** `fact`, `inference`, `guess`.
- **Evidence ladder:** L0 opinion about the future · L1 stated past behaviour · L2 observed behaviour/artifact · L3 low-cost action · L4 commitment · L5 money. Desk research is `desk`, max L2.
- **Never call an idea good or validated.** **Counts with denominators.** **Plain language.**
- **Files:** `validation/<slug>/experiments/NN-<slug>.md`. If you can't write files, print it in a code block headed by its path and tell the user to save it or keep it in their project knowledge.
- **Language:** reply in the user's language; write customer-facing assets (messages, landing copy, offers) in the segment's language and currency — ask if unsure.

## Step 1 — Pick the assumption

Read `assumptions.md` and take the top-priority untested assumption unless the user names another. If there's no assumptions file, ask the user for the one belief that, if wrong, kills the idea — and suggest running `byb-assumptions` afterwards.

If the named assumption bundles several bets (segment + problem + price), say which part the test actually checks and whether an untested part (does the problem even exist for them?) could explain a failure. Add one question to the test (e.g. to the offer conversation) that separates them.

## Step 2 — Decide the level needed

Decide: what would we do differently depending on the result, and how much is at stake? If the user's message already answers it, don't ask — state your reading and the required level.
- Next step is a weekend of work → L2–L3 can be enough.
- Next step is months of building, money, or quitting a job → aim for L4–L5.
Say the required level out loud.

## Step 3 — Choose the test

Read `references/test-catalog.md`. Filter to tests that (a) can test this assumption and (b) can reach the required level. Pick the cheapest and fastest. Then try to shrink it: fewer days, fewer people, no code. Mention one runner-up in a single line.

Fit the test to the user's stated hours and dates and show the hour split. If a strong default below doesn't fit (e.g. outreach *then* pilot), take the single stage that reaches the required level, or say plainly that it won't fit.

Strong defaults:
- Problem/customer unknown → problem interviews (5–10) + desk scan.
- Value or price unknown → fake door with a visible price, or a pre-sale/deposit.
- B2B → cold outreach to book calls, then a paid pilot or priced letter of intent.
- Service-shaped value → concierge: deliver it by hand to 3–5 customers, charge if possible.

## Step 4 — Fix the bar (pre-registration)

Write, before the start date:
- **Measure** — what is counted, with its denominator (messages sent, visitors, qualified prospects).
- **Success line** — the count that means CONTINUE.
- **Kill line** — the count that means STOP or CHANGE.
- **Between the lines** — what we do then (usually change one thing or run a stronger test).
- **Minimum sample** — below this we can't decide.
- **Timebox and budget.**

How to set the lines:
1. Prefer economics: "for ads to pay back at our price we need ≥ X% visit-to-signup" — show the arithmetic, label inputs as `guess`.
2. Otherwise, ask the user: "What result would genuinely disappoint you?" That's near the kill line. "What would make you clear your weekend for this?" That's near the success line.
3. At small samples use counts ("≥ 3 of 10 pay a deposit"), not percentages with false precision.
4. Never invent industry benchmarks. If you cite one, name the source; otherwise label it `guess`.
5. **The user owns the bar.** Propose a draft with every number labelled `guess` and how you got it, and get their explicit OK before the start date. Example thresholds in the catalog are illustrations, not norms — never present them as typical rates.

## Step 5 — Draft the assets

Produce what they need to run the test today, ready to copy:
- Interviews → recruiting message + script (or hand off to `byb-interview`).
- Fake door / landing → headline, sub-headline, 3 outcome bullets, price, call-to-action, and the honest "not live yet" message for people who click.
- Cold outreach → 2 message variants (≤ 90 words each) + tracking table.
- Pre-sale → offer text, price, delivery date, refund terms.
- Concierge → what you'll deliver, to whom, how you'll charge, what you'll record.

Ethics: tests may simulate a product, but must not deceive people about things that matter to them (safety, privacy, charging cards without delivering). Fake doors always end in an honest message. Pre-payments are refundable if you don't deliver.

## Step 6 — Write the experiment file

Number = next free `NN` in `experiments/`.

```markdown
# Experiment NN — <short name>
> Status: PLANNED · Created: <date> · Runs: <start> → <end>

## What we're testing
Assumption A?: <text>

## Hypothesis
We believe that <who> will <observable behaviour> when <we do what>.

## The test
Type: <catalog name> · Budget: <money> · Effort: <hours>
Steps: …

## Pre-registered bar (do not edit after the start date)
- Measure:
- Success line:
- Kill line:
- Between the lines:
- Evidence level this can reach: L?
- Minimum sample before deciding:

## If it passes / fails

## Result
_Filled in by byb-log._
- Bar was changed after start? no
- Bar change requested after start? no
```

Update `assumptions.md`: status → `testing (exp NN)`.

## Step 7 — Report in chat (≤ 10 lines)

The test, the bar, the timebox, the first concrete action for today (e.g. "send the first 10 messages tonight"), and: "Come back with the raw numbers and run `byb-log`." Remind them: don't change the bar once it starts.
