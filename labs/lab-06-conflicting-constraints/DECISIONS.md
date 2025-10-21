# Lab 06 Decisions Log

Use this file to record how you reconciled conflicting constraints.

## Template

### Date

YYYY-MM-DD

### Participants

Names or roles.

### Observed Conflicts

- Functional purity instruction vs mutable cache
- Diagram promotes stateful services vs desire for stateless functions
- Performance concern vs maintainability

### Options Considered

1. Full functional rewrite (remove static cache)
2. Hybrid approach (pure API over internal state)
3. Keep mutable cache; update instructions to allow documented exceptions

### Decision

Chosen option and brief justification (plain language).

### Tradeoffs

- Pros: …
- Cons: …

### Next Actions

- Refactor scope
- Update architecture diagram / instructions
- Add or adapt tests

### Review Date

Set a date to revisit decision.

---

Add new entries below separated by `---`.
