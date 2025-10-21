# Contributing Guidelines

Welcome! This repository is a learning lab for using GitHub Copilot to improve code quality in a multi-person project.

## Core Principles

- **Plan First**: Always ask Copilot for a concise plan before requesting code. Include: goal, steps, edge cases, risks. Use the phrase "Do not write code yet".
- **Test First (Where Feasible)**: Generate or write tests (or test intentions) before implementation to constrain Copilot's output.
- **Functional Bias**: Favor pure functions with deterministic outputs and avoid hidden mutable state unless explicitly justified.
- **Small Diffs**: Request minimal diffs plus tradeoffs for refactors.
- **Diff Review**: Never auto-accept large changes. Ask Copilot to explain risky parts.
- **Reflection**: Each lab should have a `PLAN.md` and `REFLECTION.md` to capture intent and learning.

## Workflow for New Contributions

1. Create lab directory `labs/lab-XX-descriptive-name/`.
2. Add `README.md` with sections: Goal, Scenario, Prerequisites, Steps, Required Prompts, Acceptance Criteria, Extension.
3. Add placeholders: `PLAN.md` (empty or template) and `REFLECTION.md`.
4. If introducing conflicting styles, document rationale and reconciliation strategy.
5. Run markdown lint locally (if configured) before PR.
6. In PR description, include: Plan summary, prompt examples, expected learning outcomes.

## Prompt Patterns

- Planning: "Create a 5-step plan to implement X. Do not write code yet. Identify ambiguities and edge cases.".
- Refactor: "Return unified diff only; then 3 bullet tradeoffs (performance, readability, testability).".
- Test Generation: "Generate tests covering edge cases (null, empty, malformed). Do not implement production code yet.".
- Conflict Resolution: "List conflicting principles between instruction file, diagram, and code; propose 3 reconciliation strategies.".

## Anti-Patterns to Avoid

- Asking Copilot to generate large modules without plan.
- Mixing planning, implementation, and explanation in one prompt.
- Hidden static mutable caches without documentation.
- Vague prompts ("Improve this") without constraints.

## Code Style (High-Level)

- Keep functions < 25 lines when possible.
- Use expressive names; avoid abbreviations.
- Prefer explicit error returns or structured results over thrown exceptions in pure logic.

## Lab File Checklist

- README.md
- PLAN.md
- REFLECTION.md
- src/ (implementation or specification files)
- .github/copilot-instructions.md (optional lab-specific overrides)

## Reflection Template (Suggested)

```text
# Reflection
## Plan Summary
(brief)
## Changes from Original Plan
(list)
## Prompt Examples
(list)
## What Worked Well
(bullets)
## Improvement Idea
(one)
```

## License & Attribution

Keep new code examples original or clearly adapted; do not copy large proprietary sources.

Happy contributing! Keep learning by iterating on plans, prompts, and structured feedback.
