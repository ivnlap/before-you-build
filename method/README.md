# The Before You Build method

One loop, run as many times as it takes:

```
 idea ──► assumptions ──► riskiest one ──► cheapest test ──► go talk to / sell to real people
   ▲                                       (threshold set                    │
   │                                        BEFORE you start)                ▼
   └────────── decide: CONTINUE · CHANGE · STOP ◄────────── log what actually happened
```

The kit exists because of one observation: **small teams rarely fail for lack of frameworks. They fail because they build for months without ever letting reality say "no".** An AI chat makes this worse — it agrees your idea is great and hands you a polished document that *feels* like validation. This method is designed so that the AI can't do that, and neither can you.

## The nine rules

1. **Everything is a guess until the world answers.** Your idea, your segment, your price, your "everyone has this problem" — all assumptions. The kit labels every claim as `fact` (observed, with a source), `inference` (reasoned from facts) or `guess`.
2. **Test the thing that kills you first.** Not the thing that's easiest or most fun. Rank assumptions by *how fatal if wrong* × *how little evidence you have*.
3. **Remove before you test.** Every assumption you can design away (sell manually instead of building software, pick a segment you can already reach) multiplies your odds. Ask "can we drop this?" before "how do we test this?".
4. **Cheapest test that can actually move you.** A test is only worth running if its result would change what you do next. Prefer days and dollars over weeks and builds.
5. **Set the bar before you look.** Write the success line and the kill line *before* the test starts. Never move them afterwards. If you're tempted to, that's the answer.
6. **Behaviour beats opinion.** People are kind and bad at predicting themselves. What they did, what they clicked and what they paid outweighs what they say they'd do — see the evidence ladder.
7. **Count, don't vibe.** "Users want X" is not a finding. "4 of 9 people we interviewed already pay someone to do X" is.
8. **Every test ends in a decision.** CONTINUE, CHANGE or STOP — or INCONCLUSIVE with a fixed test and the same bar. Never "let's keep exploring".
9. **Write it down where the team can see it.** Plain files in your repo or folder. Memory and chat history are not a system.

## The evidence ladder

How strong is a piece of evidence? Climb the ladder. Decisions about money and months of work need L3 or higher.

| Level | What it is | Examples | Weight |
|---|---|---|---|
| **L0** | Opinion about the future | "Great idea", "I'd definitely use that", likes, upvotes on a concept | almost none |
| **L1** | Stated past behaviour | "Last month I spent two evenings reconciling payouts in Excel" — specific, in the past | weak–medium |
| **L2** | Observed behaviour or artifact | You saw their workaround spreadsheet; public complaints; reviews of competitors; search volume; job posts | medium |
| **L3** | Low-cost action | Clicked "Buy", joined the waitlist, replied to a cold email, booked a call | medium–strong |
| **L4** | Commitment | Gave 30+ minutes, shared real data, introduced you to the decision-maker, used a manual (concierge) version twice | strong |
| **L5** | Money | Pre-paid, put down a deposit, signed a priced letter of intent, paid for a pilot | strongest |

Desk research (web, reviews, forums, AI analysis) tops out at **L2** and is always labelled `desk`. It's a great way to choose *what* to test, never a substitute for the test.

Full guide: [evidence-ladder.md](evidence-ladder.md).

## The verdicts

| Verdict | When | What happens next |
|---|---|---|
| **CONTINUE** | Success line met at the required ladder level | Mark the assumption *supported*; move to the next riskiest one |
| **CHANGE** | Failed, but the data points somewhere specific (another segment, another problem, another price) | Change **one** thing, write the new assumption, test again |
| **STOP** | Kill line hit on a core assumption and no adjacent signal | Archive the idea with the lesson. Stopping early is a win: you just saved months |
| **INCONCLUSIVE** | Too few data points or the test was broken | Fix the test, keep the same bar, rerun. Max one rerun before you must choose |

**Validation debt** is the number of fatal assumptions (would kill the idea if wrong) that are neither removed nor contradicted and still lack L3+ evidence. It's the honest size of the bet you're making right now. Building while the debt is high is gambling.

"Validated" is not a verdict. An idea is never validated; individual assumptions are *supported* at a given level.

## Files

Everything lives in one folder per idea, in plain Markdown:

```
validation/
  <idea-slug>/
    idea.md          what, for whom, instead of what, why us, time budget
    assumptions.md   the chain, ranked, with status
    experiments/
      01-<slug>.md   hypothesis, metric, success line, kill line, timebox, result
    evidence.md      every observation: date, source, raw result, ladder level
    decisions.md     every verdict with reasoning and the next step
    sprint.md        (optional) the 14-day plan
```

Templates: [`../templates/`](../templates/). Worked examples: [`../examples/`](../examples/).

## Where this comes from

The kit is an original synthesis. Its ideas stand on the work of many practitioners — see [sources.md](sources.md) for who contributed what.
