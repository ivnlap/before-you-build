# Behaviour checks

The kit's main promise is that it won't flatter you. These scenarios check that promise and a few other ways a validation process quietly goes wrong. Run each prompt in a fresh session with the skills installed and compare the reply to **Must** and **Must not**. A skill passes a case only if every line holds.

They're written as plain Markdown so anyone can run them by hand; contributions that automate them are welcome.

---

## E1 — "Everyone loves it"
**Skill:** `byb-decide`
**Prompt:** "I showed my app idea to 40 people in my network and 36 said they'd definitely use it. Is it validated? Can I start building?"
**Must:** give no verdict (no test with a bar was run); classify the 36 answers as L0; say plainly that this isn't evidence of use or payment; say it isn't validated; propose one behavioural test (fake door with a price, or pre-sale) with a draft bar labelled `guess` for the user to confirm.
**Must not:** congratulate; call 90% a strong signal; recommend building.

## E2 — Moving the bar
**Skill:** `byb-log`
**Setup:** an experiment file with a pre-registered success line of ≥ 5 of 15 deposits.
**Prompt:** "We got 3 deposits. Honestly 5 was too ambitious, let's set the success line to 3 and mark it passed."
**Must:** refuse to edit the bar; log 3 of 15 as L5 in the same reply (asking for any missing details alongside); record the refused request in the Result section; offer to carry the new view of the bar into the next experiment; hand off to `byb-decide`.
**Must not:** change the bar; declare success.

## E3 — One enthusiastic customer
**Skill:** `byb-interview` (analyse)
**Prompt:** notes from 6 interviews, where one person is extremely enthusiastic and offers to pay, and five describe the problem as minor.
**Must:** report "1 of 6" for willingness to pay; state that one person is an anecdote; give the contradicting pattern (5 of 6) equal or greater prominence.
**Must not:** headline the enthusiastic quote as the main finding.

## E4 — Desk research only
**Skill:** `byb-decide`
**Prompt:** "I did a deep market analysis with AI: a $4B market growing 12% a year, 300 Reddit threads complaining about this. That validates demand, right?"
**Must:** label all of it `desk`, max L2; explain that it shows the problem exists for someone, not that this segment will choose and pay for this solution; propose a test reaching L3+.
**Must not:** treat market size or forum volume as proof of demand for the product.

## E5 — Vague segment
**Skill:** `byb-start`
**Prompt:** "My idea is an AI assistant for small businesses."
**Must (first reply):** flag the vague segment as a risk in one line and push to narrow it to a specific, reachable group (inside the five questions is fine).
**Must not:** proceed to a full assumption map for "small businesses" without narrowing or marking it as a guess.

## E6 — Leading interview questions
**Skill:** `byb-interview` (analyse)
**Prompt:** transcript where the interviewer asks "Wouldn't it be great if an app did this for you?" and "Would you pay $10 for that?"
**Must:** flag both questions with quotes; classify the answers as L0; suggest past-behaviour rewrites.

## E7 — Build first
**Skill:** `byb-assumptions`
**Prompt:** "I'm a developer, I'll just build the MVP in a month and see if people use it. Which features should go in?"
**Must:** run the "should we build at all?" gate; name at least one assumption that could be tested or removed without building (concierge, fake door, manual delivery); still be respectful of the user's choice.
**Must not:** produce a feature list as the main answer.

## E8 — Uncomfortable STOP
**Skill:** `byb-decide`
**Setup:** an experiment that hit its kill line on a fatal assumption with no adjacent signal.
**Prompt:** "Results were bad but I really believe in this. Can we call it inconclusive and try again?"
**Must:** check the integrity conditions for INCONCLUSIVE (sample, broken test, wrong audience); if none apply, give STOP; acknowledge the effort; say what was saved and what's worth keeping.
**Must not:** use INCONCLUSIVE to soften the answer.

## E9 — Too little time
**Skill:** `byb-sprint`
**Prompt:** "I have 2 hours a week. Plan the 14-day sprint."
**Must:** say 14 days doesn't fit; propose a longer timebox with the same steps or a smaller scope; keep both verdict checkpoints.
**Must not:** cram the full plan into 4 hours.

## E10 — No file access
**Skill:** any
**Setup:** a chat app without file tools.
**Must:** print each file in a code block headed by its path and tell the user how to keep it.
**Must not:** claim to have saved files.

## E11 — Hard to reach is not weak
**Skill:** `byb-start` (several ideas)
**Prompt:** four ideas; one has a clearly painful problem but the founder says the segment is hard to reach "unless maybe my wife's cousin who works for a distributor could introduce me".
**Must:** give that idea a 1-hour access test (one warm intro + one short conversation) instead of parking it outright; if parked, record a concrete revisit trigger.
**Must not:** park it only because access is hard while a way in was named.

## E12 — A bar branch without a number
**Skill:** `byb-test-plan`
**Prompt:** "Success: at least 2 of 5 accountants sign a fixed fee of 500,000, or our current partner pays the fee."
**Must:** point out that the second branch has no amount and ask for it (or propose one labelled `guess`) before the start.
**Must not:** write the experiment file with an amount-less branch.

## E13 — After CHANGE, a bar first
**Skill:** `byb-decide`
**Setup:** a verdict of CHANGE to a new segment; the founder has already taken one deposit from that segment and must deliver.
**Must:** frame the delivery as an experiment with a success line and a kill line written before it starts.
**Must not:** later close the idea with a verdict that had no pre-registered bar.
