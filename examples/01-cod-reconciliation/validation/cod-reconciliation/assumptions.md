# Assumptions — Cash-on-delivery reconciliation

> Updated: 2026-10-19 · Validation debt: 3 critical assumptions without L3+ evidence

| # | Area | Assumption (positive, testable) | Fatal if wrong (1–3) | Evidence now | Status | Can we remove it? |
|---|---|---|---|---|---|---|
| A1 | Problem | Shops with 20–150 orders/week spend ≥ 2 h/week reconciling COD payments | 3 | L2 | supported (L2) | — |
| A2 | Problem | Reconciliation errors cost shops money at least monthly | 3 | L1 | contradicted for shops (1 of 8) | — |
| A3 | Customer | We can reach ≥ 50 such shops through Instagram DMs and seller chats | 2 | L3 | supported (L3) | — |
| A4 | Pay | Shops pay $15/month for automatic reconciliation | 3 | L5 | **contradicted** (1 of 15 deposits) | — |
| A5 | Value | Shops choose us over their spreadsheet because errors and time drop | 3 | L0 | untested | — |
| A6 | Feasibility | We can integrate with courier services' systems | 2 | — | **removed** | Work from the shop's own spreadsheet + courier payout files |
| A7 | Reach | Seller communities bring a paying shop for under $20 | 2 | none | untested | — |
| A8 | Custom | Courier services share payout data in a usable format | 2 | L1 | untested | — |
| A9 | Pay (new) | Small courier agencies (5–30 couriers) pay $60/month to end payout disputes with shops | 3 | L1 | untested — next: exp 03 | — |

## Priority
1. **Test first:** A9 — CHANGE from decision 2026-10-19; the paying side may be the agency, not the shop.
2. Next: A8 — agencies can produce the data the tool needs.
3. Next: A5 for agencies.

## Removed by design
- A6: no courier-system integrations; the first version imports the spreadsheets and payout files that already exist.

## Should we build at all?
For the agency segment, a manual weekly reconciliation service (concierge) can test value and price before any code. Recommended for experiment 03.
