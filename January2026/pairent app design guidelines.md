---
type: note
created: 2026-01-23
modified: 2026-01-23 14:30
tags:
categories:
  - design
  - app development
  - project
  - app
projects:
  - pairent
priority:
permalink:
---
---
> [!info] 
> Below is a practical, repeatable workflow you can follow for most SaaS-style apps. It bakes in the “three-doc split,” style guide reuse, interface-first contracts, thin vertical slices, and an independent review pass.

## Step-by-step guide

### 0) Set up your workspace (once)

1. Create a repo with these folders:
    
    - `/docs/frontend-requirements.md`
    - `/docs/backend-spec.md`
    - `/docs/design-system.md`
    - (Optional but recommended) `/docs/platform-quality.md`
    
2. Add a `/tickets/` folder for small implementation tasks (one file per ticket).
    
3. Decide your “definition of done” gates:
    
    - Lint + typecheck + unit tests passing
    - Manual smoke test steps written and executed
    - Feature matches acceptance criteria

---

## Phase 1: Write the docs (fast, but structured)

### 1) Design System / Style Guide (Doc #3) — do this first

Goal: lock the UI rules so everything looks coherent.

Include:

1. **Design tokens:** typography, spacing scale, colors, radii, shadows
2. **Components:** buttons, inputs, modals, tables, cards, toasts, nav
3. **Interaction patterns:** loading, empty, error, success, confirm dialogs
4. **Accessibility baseline:** focus states, keyboard nav, contrast expectations
5. **Examples:** 1–2 sample screens in your preferred layout style

Output: a style guide you can reference in every frontend prompt.

---

### 2) Frontend Requirements (Doc #1)

Goal: specify what users see and do, without backend implementation detail.

For each page/flow, write:

1. **User goal** (what success looks like)
2. **Entry points** (where the user comes from)
3. **UI states** (loading, empty, error, permission denied)
4. **Form rules** (validation, constraints)
5. **Acceptance criteria** (explicit pass/fail; ideally Given/When/Then)

Also include:

- A list of **key user journeys** (3–6 max)
- A list of **events worth tracking** (optional but helpful)

---

### 3) Backend Spec + Contract (Doc #2)

Goal: define the interface and data rules early to avoid rework.

Include:

1. **Data model:** entities, relationships, constraints, indexes
2. **Auth & permissions:** roles, ownership rules, RLS policies (if Supabase)
3. **API contract:** endpoints or RPC functions, request/response schemas
4. **Error semantics:** standard error codes/messages; retry rules
5. **Background jobs/webhooks** (if any)
6. **Migrations + seeding** approach

Critical: write the contract so the frontend can be built against it.

---

### 4) Platform & Quality (Optional but strongly recommended)

Goal: capture cross-cutting requirements that otherwise get missed.

Include:

- Security & privacy basics (PII, retention, audit logs)
- Observability (logging, error reporting)
- Performance budgets (page load targets, API latency targets)
- Environments (dev/staging/prod), secrets handling, rollback strategy

Keep it short (1–2 pages).

---

## Phase 2: Build in “thin vertical slices”

### 5) Pick the first vertical slice (the smallest end-to-end value)

Choose one journey that exercises the hardest fundamentals (usually auth + one CRUD):  
Example slice: “User signs up → creates one item → sees it listed → edits it.”

Write it as a ticket:

- Scope: one journey, end-to-end
- Acceptance criteria
- API endpoints/functions required
- UI states required
- Test plan

---

## Phase 3: Frontend implementation (interface-first)

### 6) Create the UI skeleton first (using the style guide)

1. Build routes/pages and core components.
2. Implement the full journey with **mock data**.
3. Ensure all states exist (loading/empty/error/permission denied).
4. Use the style guide for every component decision.

Deliverable: a clickable UI that looks real, even if data is mocked.

---

### 7) Freeze the contract for the slice

Before backend work begins, confirm:

1. Endpoint names / RPC calls
2. Request/response payload shapes
3. Error cases and status codes
4. Auth requirements

Deliverable: a stable contract (even if minimal).

---

## Phase 4: Backend implementation (make reality match the contract)

### 8) Implement data model + permissions first

1. Create tables and constraints.
2. Add RLS policies/permissions rules.
3. Add seed data for local dev and testing.
4. Verify permissions with simple scripted checks.

Deliverable: secure persistence that matches the spec.

---

### 9) Implement the API for the slice

1. Implement endpoints/RPC functions exactly matching the contract.
2. Validate inputs and return consistent errors.
3. Add basic tests (unit or integration) for success + key failures.

Deliverable: backend that supports the UI without hacks.

---

## Phase 5: Integrate and test

### 10) Wire the frontend to the real backend

1. Replace mocks with API calls.
2. Keep UI states intact (don’t remove loading/errors).
3. Ensure error messages are user-appropriate.

Deliverable: slice works end-to-end.

---

### 11) Run a structured verification pass (independent review)

Use a “review rubric” and a separate model/tool to check

- Does code meet acceptance criteria?
- Any missing states or edge cases?
- Security/auth correctness (ownership, RLS)
- Data integrity (constraints, validation)
- Tests present and meaningful

Deliverable: a concrete list of fixes.

---

### 12) Fix issues, then lock the slice

1. Apply fixes.
2. Update docs if behavior changed.
3. Final smoke test with written steps.

Deliverable: a stable, shippable slice.

---

## Phase 6: Expand iteratively

### 13) Repeat slice-by-slice

For each new slice:

1. Add/adjust requirements (frontend doc)
2. Update contract/data model (backend spec)
3. Extend UI with mocks first (fast)
4. Implement backend to match contract
5. Integrate + structured review

Keep slices small; avoid building 10 pages before any end-to-end path works.

---
## A simple “LLM ticket” template (use for every slice)

Copy/paste this into `/tickets/NNN-feature-name.md`:

- **Goal:**
- **Scope (in/out):**
- **UX requirements:** (link to frontend doc section)
- **Contract requirements:** (endpoints + payloads)
- **Acceptance criteria:**
- **Edge cases:**
- **Test plan:**    
- **Telemetry (optional):**
    

---

## Recommended cadence

- 1–2 days: docs + first UI skeleton
- Next: first end-to-end slice working
- Then: slice-by-slice expansion, always keeping the app runnable