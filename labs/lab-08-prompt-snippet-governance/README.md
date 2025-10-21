# Lab 08: Prompt Snippet Governance

## Goal

Establish a lightweight governance process for shared Copilot prompt snippets so they stay accurate, consistent, and useful across the team.

## Scenario

Your team has accumulated ad-hoc prompt snippets. Some are redundant, some outdated. You will:

1. Inventory existing snippets.
2. Classify each (Active / Needs Review / Deprecated).
3. Propose improvements or removals.
4. Apply lifecycle metadata.
5. Reflect on impact.

## Prerequisites

- Using prompt snippets in your IDE/editor
- Maintaining shared team artifacts
- Reading JSON snippet files
- Exposure to plan-first and test-first prompts (helpful)

## Definitions

- Active: Clear, tested, aligned with current instructions.
- Needs Review: Ambiguous wording or outdated constraints.
- Deprecated: Superseded or harmful; scheduled for removal.

## Required Prompts

1. "Generate a table listing each snippet in `src/snippets.code-snippets` with purpose and potential issues. Do not modify code yet."
2. "Suggest improvements for items marked Needs Review; produce only rewritten bodies."
3. "Create a diff marking deprecated snippets with a DEPRECATED tag comment."
4. "Summarize governance actions applied (counts per category) in plain language."

## Files to Use

- `src/snippets.code-snippets` (baseline examples)
- `SNIPPET-GOVERNANCE.md` (lifecycle policy)

## Acceptance Criteria

- `SNIPPET-GOVERNANCE.md` lists lifecycle stages and review cadence.
- Updated `src/snippets.code-snippets` contains metadata comments (e.g., `// STATUS: Active`).
- Deprecated snippet clearly tagged and retained for historical context.
- Reflection file `REFLECTION.md` includes table of changes + one improvement idea for automation.

## Steps

1. Read `SNIPPET-GOVERNANCE.md`.
2. Run prompt #1 and paste output into `REFLECTION.md` table section.
3. Run prompt #2; apply chosen changes.
4. Run prompt #3; tag deprecated snippet.
5. Run prompt #4; append summary to reflection.

## Extension

Automate classification with a script scanning for missing keywords (e.g., "Do not write code yet" in plan prompts).

## Tips

- Keep snippets short and directive.
- Avoid mixing plan and implementation in one snippet.
- Provide explicit output format requests ("Return a unified diff", etc.).
