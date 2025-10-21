# Lab 04: Refactoring Duplicated Logic with GitHub Copilot

## Goal

Use Copilot to identify and refactor duplicated / imperative logic into clean, reusable functions while preserving behavior.

## Scenario

A PowerShell script contains repeated blocks that manipulate strings and write output. You'll guide Copilot to:

- Detect duplication
- Suggest abstractions
- Introduce a helper function
- Add simple tests (optional stretch)

## Steps

1. Open the script in `src/duplicated_logic.ps1`.
2. Prompt Copilot Chat: "List duplicated patterns in this file and propose a single function extracting them. Return a diff.".
3. Accept / adjust function name & parameters.
4. Ask: "Add comment-based help and parameter validation.".
5. (Optional) Create a Pester test file to validate refactored function.

## Prompts to Try

- "Refactor duplication into one function; keep output format identical."
- "Explain the tradeoffs of this refactor in 3 bullets."
- "Suggest meaningful parameter names following PowerShell guidelines."

## Acceptance Criteria

- Script runs without errors.
- No duplicated multi-line blocks remain.
- New function has comment-based help and clear parameter names.

## Next

Proceed to Lab 05 for test-first prompting.
