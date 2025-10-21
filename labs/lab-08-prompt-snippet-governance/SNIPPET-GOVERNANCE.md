# Prompt Snippet Governance Policy

## Purpose

Keep shared Copilot prompt snippets accurate, consistent, and aligned with current instructions.

## Lifecycle Stages

- STATUS: Active -> Clear, concise, referenced by current labs.
- STATUS: Needs Review -> Outdated wording, missing constraints, ambiguous output description.
- STATUS: Deprecated -> Replaced by better snippet or encourages poor practice; keep temporarily for context.

## Required Metadata in Each Snippet

Add a leading comment line inside the snippet body or top-level description area:
`// STATUS: Active` (or Needs Review / Deprecated)
`// LAST-REVIEW: YYYY-MM-DD`
`// OWNER: name or role`

## Review Cadence

- Weekly quick scan (≤5 min) before planning meeting.
- Monthly deeper review; remove or archive Deprecated snippets.

## Quality Checklist

- Plan-first prompts explicitly say: "Do not write code yet".
- Refactor prompts specify output format (e.g., unified diff + bullet tradeoffs).
- Testing prompts list at least one edge case category.
- No snippet mixes planning instructions and implementation code in same body.

## Deprecation Process

1. Mark snippet `// STATUS: Deprecated`.
2. Add replacement reference: `// REPLACED-BY: <snippet prefix>`.
3. Retain for one review cycle; then remove.

## Automation Ideas

- Script to flag snippets missing LAST-REVIEW older than 30 days.
- Lint rule checking presence of required metadata comments.

## Example Metadata Block

```text
// STATUS: Active
// LAST-REVIEW: 2025-10-21
// OWNER: Team Copilot Steward
```

## Next

Integrate governance checks into CI and reflect improvements in `REFLECTION.md`.
