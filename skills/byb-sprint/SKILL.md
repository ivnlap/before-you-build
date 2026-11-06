---
name: byb-sprint
description: Plan and run a 14-day validation sprint for a product or startup idea — from a raw idea to a CONTINUE, CHANGE or STOP decision — scaled to the hours the person actually has, with a dated day-by-day checklist. Part of the Before You Build kit. Use when someone wants a structured plan to validate an idea "in two weeks", "this month", "before I quit my job", or asks for a step-by-step validation plan.
---

# Before You Build — the 14-day sprint

A fixed timebox beats open-ended exploring. Two weeks is enough to get from an idea to real behaviour from real people, and short enough that a STOP doesn't hurt. You plan the sprint, then act as its coach: each time the user comes back, check today's step and route to the right skill.

## Ground rules (shared by all byb skills)

- **Every claim gets a status:** `fact`, `inference`, `guess`.
- **Evidence ladder:** L0 opinion about the future · L1 stated past behaviour · L2 observed behaviour/artifact · L3 low-cost action · L4 commitment · L5 money. Desk research is `desk`, max L2.
- **Never call an idea good or validated.** **Counts with denominators.** **Plain language.**
- **Files:** `validation/<slug>/sprint.md` plus the usual idea files. If you can't write files, print them in code blocks headed by their paths and tell the user to save it or keep it in their project knowledge.
- **Language:** reply in the user's language.

## Step 1 — Inputs

Need: the idea (run `byb-start` steps 3–4 inline if there's no `idea.md`), the start date, and **realistic hours per week**. If fewer than 4 hours a week, propose a 21–28-day version with the same steps instead of cramming.

## Step 2 — The default shape

| Days | Goal | Skill | Output |
|---|---|---|---|
| 1 | Capture the idea, map and rank assumptions | `byb-start`, `byb-assumptions` | `idea.md`, `assumptions.md` |
| 2 | Desk scan (2–4 h): competitors' reviews, communities, search | — | `evidence.md` rows tagged `desk` |
| 2 | Design test 1 — problem interviews or outreach — with the bar | `byb-test-plan` | `experiments/01-…` |
| 3–6 | Run test 1: recruit and hold 5–8 conversations | `byb-interview` (prepare) | notes |
| 7 | Analyse, log, **checkpoint verdict** | `byb-interview` (analyse), `byb-log`, `byb-decide` | decision 1 |
| 8 | Design test 2 — behavioural: fake door with price, pre-sale, or concierge — with the bar | `byb-test-plan` | `experiments/02-…` |
| 9–12 | Run test 2 | — | raw numbers |
| 13 | Log | `byb-log` | evidence rows |
| 14 | **Final verdict and memo**: what's supported, what's not, the go/no-go for building | `byb-decide` | decision 2 + sprint summary |

Adapt: if the problem is already well evidenced (L2+ from several sources), skip to a behavioural test on day 2. If day 7 says STOP, the sprint ends early — that's a success.

## Step 3 — Write `sprint.md`

```markdown
# Sprint — <idea name>
> <start date> → <end date> · <hours/week> · Goal: a CONTINUE / CHANGE / STOP decision backed by L3+ evidence

## Plan
- [ ] <date> Day 1 — … (≈ <h>)
- [ ] <date> Day 2 — …
…

## Checkpoints
- <date> Day 7 — verdict on experiment 01
- <date> Day 14 — final verdict

## Rules for this sprint
- No building beyond what a test needs.
- The bar is set before each test and never moved.
- If a day slips, move the remaining plan; never skip the day-7 and day-14 verdicts.
```

Use real dates. Put effort estimates on every line; the total must fit the hours given — if it doesn't, cut scope and say what you cut.

## Step 4 — Coaching mode (each time the user returns)

1. Read `sprint.md` and today's date.
2. Say which day it is, what's done, what's due today, and what's overdue.
3. Route to the right skill for today's step.
4. If more than 2 days behind: re-plan the remainder honestly (fewer interviews, smaller test), keeping both verdict checkpoints.

## Step 5 — Final summary (day 14)

Add to the top of `sprint.md`:
- Final verdict and the one-line reason.
- Assumptions supported (with levels) and contradicted.
- What it cost: hours and money.
- If CONTINUE: the next riskiest assumption and the smallest build (or no build) that tests it.
- If STOP: what was learned and anything worth keeping.
