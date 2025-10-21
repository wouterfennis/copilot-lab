# GitHub Copilot: Context-Driven Code Quality

## Why Theory Matters

Copilot is not just an auto-complete engine. It is a context amplifier: what you feed it (prompts + persistent artifacts) shapes what it suggests. Understanding context layers lets teams steer output toward shared standards even when individual developers have different styles or experience levels.

---

## Layers of Context (Influence Pyramid)

1. Ephemeral Prompt (least persistent)  
   - The immediate message you send ("Write a pure function for...").
2. Conversation History  
   - Prior turns: examples, constraints, corrections.
3. Open Buffers / Selected Code  
   - Files currently visible to Copilot chat or inline suggestions.
4. Repository Artifacts  
   - Instruction files: `.github/copilot-instructions.md`, `AGENT.md`.  
   - Style/config: `.editorconfig`, `Directory.Build.props`, lint configs.  
   - Tests & fixtures: they imply public contracts & edge cases.  
   - Diagrams & docs: `architecture.mermaid`, design notes.  
5. Organizational Standards (most persistent)  
   - Sonar / Roslyn rules, security checklists, performance SLAs.

The closer to the bottom, the more durable the influence. Changing prompts helps short term; codifying standards in artifacts scales team-wide.

---

## Securing Coding Standards with Copilot

| Strategy | Artifact | Purpose | Copilot Effect |
|----------|----------|---------|----------------|
| Functional philosophy | `.github/copilot-instructions.md` | Declare architectural constraints | Bias toward pure, small functions |
| Style enforcement | `.editorconfig` | Consistent formatting | Reduces noisy diffs; guides naming |
| Test-first usage | Lab test scaffolds | Define behavior before implementation | Suggests code satisfying tests |
| Quality gates | CI workflow, analyzers | Automatic feedback loop | Future prompts can reference failures |
| Architecture diagrams | `*.mermaid` | Shared mental model | Shapes structure suggestions |
| Decision logs | `DECISIONS.md` | Document reconciliations | Avoid repeated debates |

---

## Prompt Patterns That Leverage Context

1. Anchor to artifacts:  
   - "Using the functional rules in `.github/copilot-instructions.md`, refactor this class."  
2. Provide role + constraints:  
   - "You are refactoring toward a functional core. Avoid mutable state and keep functions < 25 lines."  
3. Supply minimal examples:  
   - "Model after this helper: `CollapseWhitespace` (pure, single responsibility)."  
4. Ask for reasoning + diff:  
   - "Return only a unified diff and 3 bullet tradeoffs."  
5. Conflict resolution:  
   - "Compare `architecture.mermaid` with `HybridCache.cs` and the global purity instructions; list conflicts and one compromise approach."  

---

## Handling Conflicting Signals

Sometimes different files disagree (an instruction file wants pure functions, a diagram shows classes, existing code uses a shared cache). You can still move forward:

- Find differences: Ask Copilot to list where reality (code) does not match the written rules.
- Choose a small first change: Pick one tiny improvement (remove a static field, add a pure helper) instead of a big rewrite.
- Document the choice: Write 3 short sentences in a decisions log explaining what you changed and why.
- Adjust prompts: Mention the decision so future suggestions stay consistent.

Avoid silent drift: if you change code style, update the instruction file or examples so Copilot does not mix old and new styles.

---

## Checklist: Adding a New Standard

Before merging:

- [ ] Write it down (instruction file or README section).
- [ ] Provide 1–2 canonical examples (good + bad).
- [ ] Add tests or lint rules that enforce it where feasible.
- [ ] Reference the artifact explicitly in onboarding prompts.
- [ ] Include reasoning (performance, security, clarity) to reduce pushback.

After merging:

- [ ] Run Copilot on a sample refactor to validate adoption.
- [ ] Capture any mis-suggestions; refine instructions.
- [ ] Add to `references.md` or team wiki.

---

## Anti-Patterns (Reduce Quality)

- Vague prompts: "Make this better" (no direction).  
- Hidden mutable global caches without documentation.  
- Divergent examples: mixing imperative + functional styles untagged.  
- Absent tests: acceptance criteria left implicit.  
- Repeated manual micro-fixes instead of updating instructions.  

---

## Measuring Impact

| Signal | How to Collect | Interpretation |
|--------|----------------|----------------|
| Suggestion consistency | Compare Copilot outputs across devs | High variance => missing artifacts |
| Linter / analyzer noise | CI failure counts trending down | Standards internalized |
| Prompt refinement steps | Number of iterations to "good" code | Fewer iterations => clearer context |
| Merge review comments | Count style-related remarks | Drop indicates effective instruction files |

---

## Quick Start in This Repo

1. Read `.github/copilot-instructions.md` (functional purity baseline).  
2. Open `lab-06-conflicting-constraints/` to observe intentional conflict.  
3. Prompt Copilot to summarize constraints and propose refactor approach.  
4. Create a `DECISIONS.md` capturing chosen reconciliation.  
5. Add or adjust tests to enforce your chosen direction.  

---

## Ask for a Plan First

Before you ask Copilot to write code, request a short plan. A plan reduces wasted iterations and makes suggestions more consistent:

Suggested prompt:

"Create a 5-step plan to implement X based on the project instructions. Do not write code yet. Identify risks or ambiguities."

After you get the plan:

- Clarify any vague step (rewrite in simpler words).
- Add constraints (performance, security, readability).
- Then ask for code referencing the finalized plan.

Benefits:

- Fewer partial or incorrect implementations.
- Easier team review (you can discuss the plan first).
- Encourages thinking about tests and edge cases early.

---

## Evolving Standards Safely

1. Prototype change in a branch with an alternate instruction snippet.  
2. Generate sample code (before/after) and diff complexity metrics.  
3. Collect developer feedback (clarity, friction).  
4. Merge only after updating examples + tests.  

---

## Example Combined Prompt

```text
You are refactoring toward a functional core.
Context artifacts:
- Functional directive in .github/copilot-instructions.md
- HybridCache.cs currently uses static mutable state
Task:
Replace static cache with a pure cache module returning a new state when updated.
Return: unified diff + 3 tradeoffs (performance, memory, testability).
```

---

## Maintaining Team Alignment

- Periodic "Context Review" meeting: inspect instruction files & diagrams.  
- Rotate stewardship: each iteration one dev curates examples.  
- Keep prompts in version control (e.g., `prompt-snippets/`).  
- Automate detection: script scans for banned patterns (e.g., `static Dictionary`).  

---

## References & Inspiration

- Sonar C# Rules: <https://rules.sonarsource.com/csharp/>
- Roslyn Analyzers: performance, reliability, style
- Functional Core / Imperative Shell pattern
- Architecture decision records (ADR format)

---

## Glossary (Plain Language)

- Functional: Functions that take input and return output without changing hidden state.
- Imperative: Code that says "do this, then that" and often changes variables step by step.
- Mutable state: Data that can be changed after it is created (e.g., a static dictionary that you update).
- Pure function: Always gives the same output for the same input and does not touch outside data.
- Variance (in suggestions): How different Copilot answers are for the same kind of task. High variance means results jump around; low variance means consistent style.
- Diff: A comparison showing lines added or removed.
- Tradeoff: A result that is better in one way and worse in another (speed vs readability).
- Artifact: A file in the repo that gives context (README, instructions, config, diagram).

## Final Thought

Write the rules down first, then prompt. Clear examples + short explanations make Copilot act like a consistency helper for every teammate.
