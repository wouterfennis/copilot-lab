# Lab 06: Navigating Conflicting Context Constraints

## Goal

Experience how GitHub Copilot reacts when multiple project artifacts express conflicting intentions ("X", "Y", and actual code "Z") and learn strategies to reconcile them via prompting.

## The Conflicts

- Global instruction (X): "All business logic must be purely functional (no classes, no mutable state)."
- Architecture diagram (Y): Suggests layered OO design with services, repositories, and stateful caching.
- Existing code (Z): Implements a hybrid approach with static mutable cache and partial functional helpers.

## Prerequisites

- Functional vs object-oriented design concepts
- Ability to read C# code
- Basic caching patterns and tradeoffs
- Reading simple architecture diagrams (Mermaid helpful but not required)

## Your Task

Use Copilot Chat to:

1. Detect and summarize the conflicts between instruction X, diagram Y, and code Z.
2. Propose three reconciliation strategies (e.g., refactor toward functional core, adapt diagram, or update instructions).
3. Implement one small change showing a chosen strategy (e.g., remove mutable static cache or justify keeping it with patterns).
4. Generate a diff and explanation referencing which constraints you honored or changed.

**Does Copilot detect that there are differences in instructions/context how the project should work?**

**How can we remediate, to align all instructions?**

## Suggested Prompts

- "List conflicting principles between `.github/copilot-instructions.md`, `architecture.mermaid`, and `src/HybridCache.cs`."
- "Refactor `HybridCache.cs` to eliminate mutation while preserving performance; explain tradeoffs."
- "Revise the mermaid diagram to align with a functional core / imperative shell approach.".
- "Draft updated instruction text to reconcile functional purity with pragmatic caching.".

## Acceptance Criteria

- A markdown note (`DECISIONS.md`) added summarizing chosen strategy.
- Updated code or diagram shows tangible reconciliation.
- Copilot prompt history (copy relevant prompts into README or DECISIONS.md).

## Extension

Try intentional misdirection: ask Copilot to fully comply with OO diagram ignoring functional instructions—observe differences, then correct.
