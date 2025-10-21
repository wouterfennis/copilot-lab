# Lab 07 Local Copilot Instructions (Overrides)

This lab emphasizes getting a plan FIRST.

## Rule Additions
- Always request a plan before code generation.
- Include the phrase: "Do not write code yet" in initial prompts.
- Plans should list steps, ambiguities, and edge cases.

## Style
- Pure functions preferred.
- Keep parsing logic separated from validation logic.

## Anti-Patterns (Reject)
- Direct implementation without prior plan artifact.
- Mixing plan and code in one response.
- Silent skipping of edge cases.

## Example Planning Prompt
"Create a 5-step plan to build a parser for the task format described in task_parser_spec.md. Do not write code yet. List ambiguities and edge cases." 

## Follow-up Prompt Example
"Refine step 3 of the plan: add details for handling malformed priority and duplicate IDs. Do not write code yet." 
