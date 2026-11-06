# Test catalog

Fourteen cheap tests, ordered roughly from cheapest to most committal. Each entry says which assumption it can test, the highest evidence level it can produce, and what usually goes wrong.

Legend — **Tests:** P = problem exists · C = customer/segment exists and is reachable · V = value (they'd choose this over today's alternative) · W = willingness to pay / price · R = reach (a channel works) · E = economics · F = feasibility / delivery.

---

## 1. Desk scan
**Tests:** P, C, R (weakly) · **Max level:** L2 (`desk`) · **Cost:** 2–6 hours, free
**How:** Search reviews of existing alternatives (app stores, G2, marketplaces), forums and communities, search-volume tools, job posts for people doing the task manually. Capture quotes with links and dates.
**Good for:** Choosing what to test and finding where your people gather.
**Pitfalls:** Mistaking "someone on the internet has this problem" for "my segment will pay me". Cherry-picking. Never ends in CONTINUE on its own for V, W or E.

## 2. Problem interviews
**Tests:** P, C · **Max level:** L1, sometimes L2 (they show you the workaround) · **Cost:** 5–10 conversations × 30 min
**How:** Recruit people from the exact segment. Ask about the last time the problem happened, what they did, what it cost, what they tried. Don't pitch. See the `byb-interview` skill.
**Good for:** Learning the real job, current alternatives, language and triggers.
**Pitfalls:** Talking to friends; pitching; asking "would you use…"; counting compliments.

## 3. Workaround hunt
**Tests:** P, V · **Max level:** L2 · **Cost:** a few interviews or posts
**How:** Ask people to show (screen-share, photo) how they handle it today: spreadsheets, scripts, assistants, notebooks.
**Good for:** A homemade workaround is one of the strongest early signs of real pain.
**Pitfalls:** "We just deal with it" means the pain may be too small to switch for.

## 4. Search & community demand check
**Tests:** P, R · **Max level:** L2 · **Cost:** 1–2 hours
**How:** Check search volume for problem phrases (not your product name), size and activity of communities where the segment discusses it.
**Good for:** Sizing a channel and finding the words people use.
**Pitfalls:** Search volume ≠ buyers. Volume for a *solution category* is a better signal than for a vague topic.

## 5. Cold outreach / pitch email
**Tests:** C, R, V (weakly) · **Max level:** L3 (replies, booked calls) · **Cost:** 20–50 messages, 1–2 days
**How:** Write a short, specific message to people in the segment describing the outcome (not the features) and asking for a call or a reply. Track sent / opened / replied / booked.
**Example threshold (illustration, not a benchmark):** Decide the reply or booking count you need before sending, e.g. "≥ 5 calls booked from 40 messages".
**Pitfalls:** Messaging people who know you; vague offers; counting "interested, send more info" as a booking.

## 6. Fake door / smoke landing page
**Tests:** V, W (if a price is shown), R · **Max level:** L3 · **Cost:** 1 day + small traffic budget
**How:** One page: the promise, who it's for, a price, a clear call to action ("Get early access — $X/month"). The button leads to an honest "we're not live yet — leave your email and we'll reach out". Drive targeted traffic.
**Example threshold (illustration, not a benchmark):** Back-calculate from economics — what visit-to-signup rate makes paid acquisition work? Record visits, clicks on the CTA, emails.
**Pitfalls:** Too little traffic to conclude anything (with fewer than a few hundred targeted visits, small differences mean nothing — rule of thumb, not a benchmark); untargeted traffic; no price shown (then it doesn't test W). Always be honest with people who click.

## 7. Ad smoke test
**Tests:** R, V · **Max level:** L3 · **Cost:** small ad budget, 3–7 days
**How:** Two or three ad angles to the same landing page, targeted at the segment. Measure click-through and signups per angle.
**Good for:** Which promise resonates; rough cost to acquire a signup.
**Pitfalls:** Judging by likes; stopping after one day; too many variants for the budget.

## 8. Explainer / demo video
**Tests:** V · **Max level:** L3 · **Cost:** 1 day
**How:** A 1–2 minute video showing how it would work (mock-ups are fine), posted where the segment is, with a signup link.
**Pitfalls:** Measuring views instead of signups.

## 9. Clickable prototype test
**Tests:** V, F (usability) · **Max level:** L1–L3 · **Cost:** 1–3 days
**How:** A clickable mock-up; 5–8 people from the segment try to complete the core task while thinking aloud. End by asking for a concrete next step (join pilot, pre-pay).
**Pitfalls:** Asking "do you like it?". Usability success says nothing about willingness to pay unless you ask for a commitment.

## 10. Concierge MVP
**Tests:** V, W, E, F · **Max level:** L4–L5 · **Cost:** your time, 1–3 weeks
**How:** Deliver the outcome manually to a handful of customers, openly ("we do it by hand for now"). Charge if you can.
**Good for:** Learning exactly what value is, before writing code; early revenue.
**Pitfalls:** Not charging; over-servicing in ways you can't automate later.

## 11. Wizard of Oz
**Tests:** V, W · **Max level:** L4–L5 · **Cost:** 1–3 weeks
**How:** The customer sees a product interface; behind it you do the work manually. Ethics rule: don't make claims about the product that would mislead people about safety, privacy or results.
**Pitfalls:** Building too much "front"; hiding the manual part where it matters to the customer.

## 12. Pre-sale / deposit
**Tests:** W, V · **Max level:** L5 · **Cost:** a few days
**How:** Offer the real thing at a real price with a delivery date, take a deposit or pre-payment (refundable if you don't deliver). B2B: a priced letter of intent or paid pilot.
**Example threshold (illustration, not a benchmark):** "At least 3 of 10 qualified prospects pay a deposit."
**Pitfalls:** Discounting so hard that the price signal is meaningless; asking only warm contacts.

## 13. Price test
**Tests:** W, E · **Max level:** L3–L5 · **Cost:** varies
**How:** Show different prices to comparable groups (landing variants, sales calls) and compare conversion; or ask for payment at a given price in a pre-sale.
**Pitfalls:** Asking "how much would you pay?" (L0). Too few people per price to compare.

## 14. Unit-economics sketch
**Tests:** E · **Max level:** `inference` (it's a model) · **Cost:** 1–2 hours
**How:** Write the simplest model: price, cost to serve one customer, expected lifetime, cost to acquire one customer. Find the number that breaks it.
**Good for:** Deciding which assumption most needs real data, and setting thresholds for tests 5–7 and 12.
**Pitfalls:** Treating the model's inputs as facts. Every input is a guess until a test fills it.

---

## Choosing between them

1. Which assumption are you testing? Keep only tests that can test it.
2. What ladder level do you need for this decision? Drop tests that can't reach it.
3. Of what's left, pick the cheapest and fastest — then ask whether you can make it even smaller.
