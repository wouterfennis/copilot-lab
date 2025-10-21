# Lab 08 Local Copilot Instructions (Prompt Governance)

## Focus
Improve and standardize prompt snippets; avoid vague or unsafe instructions.

## Additional Rules
- Every snippet must start with metadata comments (STATUS, LAST-REVIEW).
- Planning prompts must include phrase: "Do not write code yet".
- Refactor prompts must ask for diff + tradeoffs.
- Deprecated snippets should not be used in new tasks.

## Anti-Patterns to Flag
- Vague commands ("Clean up old code now!")
- Missing edge cases in test prompts
- Mixed planning + implementation in one snippet

## Review Prompt Example
"List each snippet with potential issues (ambiguity, missing metadata, weak constraints). Do not modify code yet; return a markdown table." 
