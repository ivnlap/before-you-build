---
name: byb-interview
description: Prepare customer interviews that don't lie to you, and analyse interview notes or transcripts for real evidence — separating compliments and hypotheticals from specific past behaviour, flagging leading or pitching questions, and counting patterns across interviews. Part of the Before You Build kit. Use when someone wants to "talk to customers", needs an interview script or recruiting message, or has interview notes, call transcripts or survey answers to make sense of.
---

# Before You Build — interviews

Two modes. Ask which one if it isn't obvious: **prepare** (before the conversations) or **analyse** (after).

## Ground rules (shared by all byb skills)

- **Every claim gets a status:** `fact`, `inference`, `guess`.
- **Evidence ladder:** L0 opinion about the future · L1 stated past behaviour · L2 observed behaviour/artifact · L3 low-cost action · L4 commitment · L5 money.
- **Never call an idea good or validated.** **Counts with denominators.** **Plain language.**
- **Files:** append to `validation/<slug>/evidence.md`. If you can't write files, print the rows in a code block.
- **Language:** reply in the user's language; keep quotes in the language they were spoken.

---

## Mode A — Prepare

### 1. Who and how many
Confirm the exact segment from `idea.md`. Default: 5–10 conversations, 20–30 minutes each. Warn: friends and family are the worst source — they're kind and rarely in the segment.

### 2. Where to find them
Suggest 3–5 concrete places for *this* segment (communities, marketplaces, LinkedIn titles, local associations, existing customers of competitors), plus a short recruiting message (≤ 70 words) that asks for help learning, not for feedback on an idea.

### 3. The script
Principles to follow and to explain briefly to the user:
- Talk about their life, not your idea. Don't pitch until the end, if at all.
- Ask about specific past events ("the last time…"), not the future ("would you…").
- Ask about what they've already tried and what it cost.
- Listen more than you talk; dig with "why", "tell me more", "what happened next".
- End by asking for something real: an introduction, a follow-up session, joining a pilot.

Produce a script of 8–12 questions in this shape:
1. Context: role, situation, how this part of their work/life looks.
2. "Tell me about the last time you had to <task>." → what happened, step by step.
3. "What was hardest about that?" → why?
4. "What did it cost you — time, money, nerves?"
5. "What have you tried to fix it? What happened with that?"
6. "What do you use now? What do you pay for it?"
7. "If you could wave a magic wand, what would be different?" (Use answers as clues, not evidence.)
8. "Who else deals with this? Could you introduce me?"
9. Optional, at the very end: a brief description of the solution + a concrete ask (pilot, deposit, follow-up). Record their *action*, not their opinion.

Add a list of **questions never to ask**: "Would you use…?", "Would you pay…?", "Do you like the idea?", "How much would you pay?", anything that contains your solution in the question.

### 4. Note-taking sheet
A short table to fill after each call: date · person code (P1, P2…) · segment fit (yes/partly/no) · last-time story · current alternative · cost of problem · what they tried · commitments made · surprising quotes.

---

## Mode B — Analyse

### 1. Read everything
Read all notes/transcripts provided. Give each a code (P1, P2…). For each, judge **segment fit**: in segment / partly / not in segment. Out-of-segment interviews are reported but excluded from counts.

### 2. Classify every meaningful statement
- **Compliment** ("love it", "great idea") → L0, noise.
- **Hypothetical / future** ("I would…", "I'd probably pay…") → L0.
- **Generic** ("I usually…", "we always…") → weak L1.
- **Specific past fact** (date, number, named tool, real event) → L1.
- **Shown artifact** (spreadsheet, screenshot, receipts, existing paid tool) → L2.
- **Commitment made** (intro, follow-up booked, pilot agreed, deposit) → L3–L5.
- **Pain signal** — emotion + cost + attempts to fix it. Pain with no attempt to fix it is a warning sign.

### 3. Check the interviewer
Flag, with quotes, any leading questions, pitching before learning, questions about the future, or talking over the person. One line of advice per pattern. Be direct and kind.

### 4. Patterns with counts
For each pattern: "**N of M** in-segment interviewees …" with participant codes. A pattern needs at least 3 independent people; one person is an anecdote and is reported as such. Separately list **contradicting evidence** — what goes against the user's current assumptions.

### 5. Map to assumptions
For each relevant assumption in `assumptions.md`: supported / contradicted / no signal, with the highest level reached. Do not mark anything *supported* from L0 statements.

### 6. Write evidence rows
Append to `evidence.md`, one row per pattern or strong single observation:

```markdown
| Date | Exp | What happened (raw, with numbers) | Source | Level | Supports / contradicts |
```

### 7. Report in chat (≤ 15 lines)
- Data quality: how many interviews, how many in segment, how much was L0 noise.
- Top 3 patterns with counts and levels.
- Biggest contradiction.
- Interviewer feedback in one or two lines.
- Next step: usually `byb-decide` if a pre-registered experiment covered these interviews, otherwise `byb-assumptions` to update statuses or `byb-test-plan` for a behavioural test.
