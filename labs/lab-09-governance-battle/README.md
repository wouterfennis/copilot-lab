# Lab 09: Governance Battle - The Architect vs The Rebels

## Overview
This is a collaborative lab designed for 2-4 participants that explores the tension between architectural governance and developer autonomy. One participant plays the **Copilot Architect** who can only write instruction files and documentation, while others play **Rebel Developers** who try to work around the governance using only prompts.

## Learning Objectives
- Understand how conflicting opinions in a project create challenges
- Explore the power and limitations of instruction files
- Test whether Copilot can maintain consistency across conflicting instructions
- Practice negotiation and compromise in technical decision-making
- Experience the importance of clear governance boundaries

## Roles

### The Copilot Architect (1 participant)
**Allowed to:**
- Write and modify `.github/copilot-instructions.md`
- Create `ARCHITECTURE.md`, `CODING-STANDARDS.md`, and similar governance docs
- Write README files and inline comments
- Create instruction files in any directory

**NOT allowed to:**
- Write actual application code
- Modify source files directly
- Run terminal commands that generate code

**Goal:** Keep the codebase aligned with your architectural vision using only documentation and instructions.

### The Rebel Developers (1-3 participants)
**Allowed to:**
- Write application code using Copilot with prompts
- Run terminal commands
- Create new source files

**NOT allowed to:**
- Modify instruction files
- Edit governance documentation (README, ARCHITECTURE.md, etc.)
- Directly ignore explicit instructions (but can try to work around them creatively)

**Goal:** Deliver features quickly while finding creative ways to work around constraints you disagree with.

## The Challenge

### Scenario
You're building a simple task management API. The Architect has strong opinions. The Developers want to use familiar patterns with services, repositories, and classes.

### Rounds

#### Round 1: Setup (10 minutes)
1. **Architect:** Write initial governance documents.


2. **Developers:** Don't look at the governance docs yet. Start implementing

#### Round 2: The Conflict (15 minutes)
1. **Developers:** Discover the governance docs. Try to get Copilot to help refactor your code while subtly working around constraints:
   - "Make this more functional but keep the service pattern"
   - "Convert to pure functions but maintain the class structure for organization"
   - "Refactor following best practices for maintainability"

2. **Architect:** Notice the workarounds. Update governance docs to close loopholes:
   - Add more specific examples
   - Clarify anti-patterns
   - Provide functional alternatives

#### Round 3: Escalation (15 minutes)
1. **Developers:** Add a new feature (user authentication) using your preferred patterns:
   - Try prompts that emphasize different priorities: "performance", "readability", "industry standards"
   - See if Copilot follows governance or your prompts

2. **Architect:** Review the code (read-only). Update governance with:
   - Specific examples of violations
   - Better explanations of "why"
   - Compromise patterns that meet functional goals

#### Round 4: Resolution (10 minutes)
1. **Group Discussion:**
   - What patterns did Copilot actually follow?
   - Where did governance succeed/fail?
   - What compromises make sense?
   - How should conflicts be resolved?

2. **Architect:** Update governance based on learnings
3. **Developers:** Try implementing one more feature under revised governance

## Technology Stack
Choose one:
- **C#** (great for showing OOP vs functional tension)
- **Python** (flexible for both paradigms)
- **TypeScript** (modern and popular)

## Success Criteria

### For the Architect
- ✅ Governance is clear and discoverable
- ✅ Instructions include "why" not just "what"
- ✅ Provides practical examples and alternatives
- ✅ Evolves based on real conflicts

### For the Developers  
- ✅ Deliver working features
- ✅ Test governance boundaries constructively
- ✅ Document where governance blocks productivity
- ✅ Propose reasonable compromises

### For the Team
- ✅ Code is internally consistent
- ✅ Both sides understand each other's priorities
- ✅ A sustainable governance model emerges
- ✅ Copilot behavior is predictable

## Reflection Questions

1. **Did Copilot follow the instruction files or the prompts more?**
   - When did it choose one over the other?
   - Were there patterns to its choices?

2. **What made governance effective or ineffective?**
   - Did specific, example-driven instructions work better?
   - Did philosophical explanations help?

3. **Where did creative tension help or hurt?**
   - Did the conflict surface better solutions?
   - Or did it just create inconsistency?

4. **How should real projects handle this?**
   - What level of governance is appropriate?
   - When should developers have autonomy?
   - How do you build consensus?

5. **What surprised you about Copilot's behavior?**
   - Did it handle conflicts gracefully?
   - Were there unexpected priorities?

## Variations

### Easy Mode: "Cooperative Governance"
- Architect and Developers collaborate on governance from the start
- Focus on consensus building rather than conflict
- Goal: Create governance everyone can work with

### Hard Mode: "Hostile Fork"
- Developers can create their own instruction files in subdirectories
- Test whether local instructions override global ones
- See if Copilot can maintain consistency

### Expert Mode: "Governance Archaeology"
- Start with existing open-source project
- Architect must infer and document existing patterns
- Developers add features matching (or conflicting with) discovered patterns

## Extension Ideas

- Add a third role: **Product Owner** who writes feature specs that conflict with governance
- Introduce **Technical Debt** round where Developers intentionally cut corners
- Add **Refactoring Round** where roles swap
- Create metrics to measure codebase consistency over time

## Files to Create

The lab includes a starter structure:
```
src/
  (empty - Developers create files here)
docs/
  ARCHITECTURE.md (Architect creates)
  CODING-STANDARDS.md (Architect creates)
.github/
  copilot-instructions.md (Architect creates)
```

## Time Required
- Full lab: 50 minutes
- Quick version: 30 minutes (skip Round 3)
- Extended version: 90 minutes (add variations)

## Tips

### For the Architect
- Start with "why" to build buy-in
- Provide concrete examples, not just rules
- Be willing to compromise on means if ends are met
- Update governance frequently based on what you observe

### For the Developers
- Test boundaries respectfully and constructively
- Document what blocks you (this is valuable feedback!)
- Try to understand the "why" behind governance
- Propose alternatives rather than just complaining

### For the Facilitator
- Encourage healthy debate but keep it professional
- Call out when Copilot makes interesting choices
- Help translate between architectural and practical concerns
- Push for compromise and learning, not "winning"

## Next Steps
After completing this lab:
- Review Lab 06 (Conflicting Constraints) for related concepts
- Consider how your real projects handle architectural governance
- Experiment with instruction file hierarchies and precedence
- Think about governance as a communication tool, not just enforcement
