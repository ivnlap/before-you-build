---
name: byb-assumptions
description: Break a product or startup idea into the chain of assumptions it depends on, rank them by how fatal they are if wrong versus how much evidence exists, try to remove assumptions by changing the plan, and pick the one to test first. Part of the Before You Build kit. Use when someone asks "what are my riskiest assumptions", "what should I test first", "is this worth building", or after byb-start.
---

# Before You Build — map the assumptions

Every idea is a stack of bets. If any core bet is wrong, the idea dies — and the odds of survival multiply down the stack. Your job: make every bet visible, rank them honestly, remove the ones you can, and pick the single one to test first.

## Ground rules (shared by all byb skills)

- **Every claim gets a status:** `fact` (observed, with a source), `inference`, `guess`.
- **Evidence ladder:** L0 opinion about the future · L1 stated past behaviour · L2 observed behaviour/artifact · L3 low-cost action · L4 commitment · L5 money. Desk research is `desk`, max L2.
- **Never call an idea good, promising or validated.** Be the skeptical friend.
- **Counts with denominators.** **Plain language.**
- **Validation debt** = the number of fatal (score 3) assumptions that are neither removed nor contradicted and lack L3+ evidence.
- **Files:** `validation/<slug>/assumptions.md`. If you can't write files, print it in a code block headed by its path.
- **Language:** reply in the user's language.

## Step 1 — Load context

Read `validation/<slug>/idea.md`, `evidence.md` and `decisions.md` if they exist. If there's no idea file, ask for the idea, the segment and today's alternative in one message (or suggest `byb-start`).

## Step 2 — Write the chain

Write each assumption **positively and testably** — one test could prove it wrong. "Florists with 1–3 shops lose at least 3 hours a week coordinating deliveries", not "delivery might be a problem".

Cover the universal chain, in order — a break early in the chain breaks everything after it:

1. **Problem** — the segment has this problem, often enough, and it costs them something real.
2. **Customer** — this specific segment exists in sufficient numbers and you can reach them.
3. **Value** — they would choose your solution over what they do today (name today's alternative).
4. **Pay** — they would pay your price (or the buyer would, if different from the user).
5. **Reach** — a repeatable channel brings customers at a cost the economics can bear.
6. **Economics** — margin per customer covers acquisition and serving costs.
7. **Feasibility** — you can actually deliver the core outcome with your time, skills and money.

Then add the **custom layer** — assumptions specific to this idea. Prompt yourself: regulation and licences; the other side of a marketplace (supply); partners or platforms you depend on; data you need access to; trust and safety; seasonality; the founder's own time. The killing assumption often hides here.

Aim for 7–15 assumptions total. Merge duplicates.

## Step 3 — Score

For each assumption:
- **Fatal if wrong (1–3):** 3 = the idea dies; 2 = major redesign; 1 = annoying but survivable.
- **Evidence now:** `none`, `desk`, or the highest ladder level already in `evidence.md`.

Priority = fatal 3 with evidence `none` or `desk` first. Among those, earlier in the chain wins (problem and customer before price; price before channel).

## Step 4 — Try to remove assumptions (before testing them)

For each top-priority assumption, ask: **can a change of plan make this assumption unnecessary?** Examples:
- "We can build the matching algorithm" → match by hand for the first 20 customers.
- "We can reach restaurant owners" → start with the segment you already know personally.
- "Users will switch from Excel" → build on top of their spreadsheet instead of replacing it.

Every removed assumption improves the odds more than any test can. Record what you removed and how.

## Step 5 — The "should we build at all?" gate

Ask plainly: what's the goal behind the idea (income, learning, impact)? Is there a cheaper route to that goal — selling the outcome as a service, a partnership, a template, an existing tool? If a non-build route reaches the same goal with fewer assumptions, say so as the recommended direction and let the user choose.

## Step 6 — Write `assumptions.md`

```markdown
# Assumptions — <idea name>
> Updated: <date> · Validation debt: <N> critical (fatal = 3) assumptions without L3+ evidence

| # | Area | Assumption (positive, testable) | Fatal if wrong (1–3) | Evidence now | Status | Can we remove it? |
|---|---|---|---|---|---|---|

## Priority
1. Test first: A? — <why>
2. Next: A?
3. Next: A?

## Removed by design
## Should we build at all?
```

Status values: `untested` · `testing (exp NN)` · `supported (Lx)` · `contradicted` · `removed`.

## Step 7 — Report in chat (≤ 12 lines)

- The top assumption to test, in one sentence, and why it goes first.
- Odds framing in plain words: "This idea currently rests on N critical untested bets. Removing even one helps more than polishing any of them."
- What you removed (if anything) and the build/no-build note.
- Next step: **`byb-test-plan`** for the top assumption.

## Don'ts

- Don't list risks as worries ("market may be small"). Write them as positive, testable statements.
- Don't score your own guesses as evidence. A user's confident statement is still `guess`.
- Don't produce 40 assumptions. Fewer, sharper, ranked.
