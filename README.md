# GitHub Copilot Lab Series

> Learn to steer GitHub Copilot with intentional context, planning, tests, and governance guard rails.

## Purpose

This repository is a set of hands-on labs designed to teach students (and teams) how to use GitHub Copilot **responsibly and effectively** within real-world code quality constraints. Each lab layers additional forms of context—global instructions, local artifacts, plans, tests, diagrams, decision logs—to demonstrate how they influence Copilot suggestions.

## What You'll Learn

- Writing clear instruction files to shape style and architecture
- Planning-first prompting ("Do not write code yet") to reduce rework
- Test-first workflows that anchor Copilot's generations
- Refactoring duplication into small pure functions
- Reconciling conflicting constraints across docs, diagrams, and code
- Prompt snippet governance and lifecycle management
- Reflection-driven improvement habits

## Guard Rails & Principles

We emphasize:

- **Functional Core**: Pure functions, no hidden mutable state
- **Plan Before Code**: Always request and refine a plan first
- **Test-First & Diff Review**: Tests define success; review generated diffs
- **Minimal, Intentional Prompts**: Short, directive, explicit output requests
- **Governance & Maintenance**: Snippet lifecycle (Active / Needs Review / Deprecated)
- **Reflection**: Every lab ends with a `REFLECTION.md` answered as questions

See `CONTRIBUTING.md` and `.github/copilot-instructions.md` for full guidelines.

## Lab Overview

A quick summary (see `labs-index.md` for details):

| Lab | Focus | Key Concepts |
| --- | ----- | ------------ |
| 01 | Basic Instructions | Global context shaping suggestions |
| 02 | Advanced Patterns | Structured prompts, refactoring targets |
| 03 | Integration Testing | Coverage gaps, quality gates |
| 04 | Refactoring Duplication | Pure helper extraction, DRY |
| 05 | Test-First | Tests constrain generation |
| 06 | Conflicting Constraints | Reconciliation strategies |
| 07 | Planning-First | Multi-step plan refinement |
| 08 | Snippet Governance | Lifecycle & metadata |

## Recommended Path

1. Start at Lab 01 and progress sequentially.
2. For each lab: Read README → Run a planning prompt → Capture the plan in `PLAN.md` → Implement → Reflect.
3. Apply global functional instructions consistently.
4. Use prompt snippets (see `prompt-snippets/`) for repeatable patterns.

## Workflow Pattern

```text
plan → clarify → implement → test → diff review → reflect → improve
```

## Repository Structure

```
/.github/copilot-instructions.md   Global functional & style guidance
CONTRIBUTING.md                    Responsible Copilot usage guard rails
labs/                              Lab directories (each with README, PLAN, REFLECTION, src/)
labs-index.md                      Quick navigation index
prompt-snippets/                   Shared prompt snippet JSON + governance policy
slides/                            Intro & theory materials
```

## Using Copilot Effectively

| Step | Prompt Pattern | Goal |
| ---- | -------------- | ---- |
| Plan | "Create a 5-step plan... Do not write code yet." | Elicit structure & ambiguities |
| Refine | "Clarify step 3; add edge cases." | Improve specificity |
| Implement | "Generate code per approved plan; keep pure functions." | Constrained generation |
| Test | "List edge cases for X; produce test skeletons." | Expand coverage |
| Review | "Explain diff impact in 3 bullets." | Understand changes |
| Reflect | "Summarize what worked and one improvement." | Continuous improvement |

## Decision & Conflict Handling

When artifacts disagree (instructions vs diagram vs code):

1. Identify conflicts explicitly
2. Propose reconciliation strategies (adapt docs, refactor code, hybrid compromise)
3. Implement a small, safe slice
4. Record rationale in `DECISIONS.md`

## Snippet Governance

Prompt snippets include metadata comments (STATUS, LAST-REVIEW, OWNER). Keep them:

- Short
- Single-purpose
- Versioned via diffs
- Reviewed periodically

See `labs/lab-08-prompt-snippet-governance/` and `SNIPPET-GOVERNANCE.md` for details.

## Getting Started

Clone the repo, open a lab directory, and begin with the planning prompt.

```pwsh
git clone https://github.com/wouterfennis/copilot-lab.git
cd copilot-lab/labs/lab-01-basic-instructions
# Open README and start with a planning prompt in Copilot Chat
```

## Contributing

Follow `CONTRIBUTING.md`. Always:

- Add or update a plan before large changes
- Keep functions small & pure when possible
- Update reflection questions after completing a lab

## License

Licensed under the [MIT License](./LICENSE).

You are free to use, copy, modify, distribute, and sell copies of the software provided the copyright and permission notice are included.

Copyright (c) 2025 Wouter Fennis

---
Questions or suggestions? Open an issue or start a discussion.
