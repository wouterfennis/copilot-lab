# Lab 07: Planning-First Workflow with GitHub Copilot

## Goal

Practice asking Copilot for a clear implementation plan before any code is generated, reducing rework and increasing consistency.

## Scenario

You need a module that parses a small task list format and outputs structured objects. Instead of coding immediately, you will:

1. Request a multi-step plan.
2. Refine ambiguous steps.
3. Add constraints (performance, readability, testability).
4. Only then generate the code.
5. Capture reflection.

## Prerequisites

- Designing small parsing functions
- Basic collection handling in chosen language
- Identifying edge cases (empty, malformed, duplicates)
- Prior completion of at least one earlier lab (recommended)

## Task Format Spec

Each line: `ID|Title|Priority|Tags` (tags semicolon-separated)
Example:

```text
42|Refactor cache|High|performance;architecture
43|Write tests|Medium|testing
```

## Required Prompts

1. "Create a 5-step plan to implement a parser for the given task format. Do not write code yet. Identify any ambiguities."
2. "Clarify step 3 with more detail and add test considerations."
3. "Revise the plan to include edge cases (empty line, malformed priority, duplicate IDs)."
4. "Generate code following the revised plan; produce pure functions; include basic tests in the same file as placeholders."
5. "Explain in simple language how the implementation satisfies each step."

## Acceptance Criteria

- A saved plan is added to `PLAN.md` before code appears.
- Final code parses sample lines into structured objects (ID:int, Title:string, Priority:enum/string, Tags:list).
- Edge cases handled: empty lines skipped, invalid lines reported.
- Reflection added to `REFLECTION.md` listing original plan, changes, and one improvement idea.

## Steps

1. Open `src/task_parser_spec.md`.
2. Run prompt #1 in Copilot Chat.
3. Copy output into `PLAN.md` and refine with prompts #2 and #3.
4. Only after plan stabilization, run prompt #4.
5. Verify output (manually or with quick test run if added).
6. Run prompt #5 and save answer in `REFLECTION.md`.

## Extension

Ask Copilot: "Suggest a minimal property-based test for the parser." and record ideas.

## Tips

- Short sentences reduce misinterpretation.
- Always include "Do not write code yet" in early plan prompts.
- If plan is too vague, ask for examples per step.

## Next

Move to a performance or evaluation lab to compare plan-first vs code-first efficiency.
