# Lab 09 Design Decisions

## Lab Purpose
Create a collaborative learning experience that:
1. Explores tension between governance and autonomy
2. Tests Copilot's behavior with conflicting instructions
3. Teaches effective governance through experiential learning
4. Demonstrates importance of clear communication

## Why This Lab Matters

### Real-World Parallels
- **Architectural decisions:** Often documented but not always followed
- **Code review conflicts:** Different opinions on "right" approach
- **Team alignment:** Need balance between consistency and autonomy
- **Copilot adoption:** Teams need governance strategies

### Learning Through Play
- Role-playing removes ego from real disagreements
- Time pressure simulates project constraints
- Competitive element maintains engagement
- Reflection solidifies learning

## Role Design Rationale

### Why Architect Can't Write Code
- Forces focus on communication, not implementation
- Mirrors real architect/tech-lead experience
- Makes governance effectiveness immediately visible
- Prevents "just do it myself" bypass

### Why Developers Can't Edit Governance
- Creates realistic constraint (junior devs often can't change standards)
- Forces working within or around constraints
- Tests instruction file effectiveness
- Simulates real-world permissions

### Why "Rebels" Not "Developers"
- "Rebel" framing encourages creative boundary testing
- Makes it psychologically safe to challenge rules
- Creates productive tension
- More fun than "compliant developer"

## Round Structure Rationale

### Round 1: Setup (Parallel Work)
- **Purpose:** Create natural conflict by having different starting points
- **Why separate:** Developers code with natural instincts, Architect documents vision
- **Expected outcome:** Mismatch between code and governance

### Round 2: Conflict (Discovery)
- **Purpose:** Test initial governance effectiveness
- **Why 15 min:** Long enough to try multiple workarounds, short enough to maintain focus
- **Expected outcome:** Some workarounds succeed, governance gaps revealed

### Round 3: Escalation (Feature Addition)
- **Purpose:** See patterns under pressure and new requirements
- **Why new feature:** Tests whether governance scales
- **Expected outcome:** More sophisticated workarounds, refined governance

### Round 4: Resolution (Reflection + Iteration)
- **Purpose:** Consolidate learning and find workable patterns
- **Why split discussion/implementation:** Cement insights before final test
- **Expected outcome:** Governance and code converge toward sustainable model

## Technology Stack Considerations

### Why Multiple Options
- Different languages show patterns vs language-specific issues
- Flexibility for participant skill levels
- Tests whether insights generalize

### Why These Three
- **C#:** Best for OOP vs Functional tension (primary target)
- **Python:** Flexible paradigms, accessible to most
- **TypeScript:** Popular, modern, good middle ground

### Why Simple Implementation
- No frameworks: Patterns more visible
- No database: Stays focused on code patterns
- In-memory: Quick to implement

## Variation Design

### Cooperative Governance (Easy)
- **For:** Teams new to instruction files
- **Teaches:** Collaborative governance design
- **Removes:** Conflict element (pro and con)

### Hostile Fork (Hard)
- **For:** Teams understanding instruction precedence
- **Teaches:** Hierarchy and scope in Copilot
- **Adds:** Technical complexity around file precedence

### Governance Archaeology (Different)
- **For:** Teams inheriting existing codebases
- **Teaches:** Inferring and documenting existing patterns
- **Changes:** Discovery focus over conflict

## Expected Copilot Behaviors

### Hypotheses to Test
1. **Specificity wins:** Specific instructions beat vague ones
2. **Prompt recency:** Recent prompts may override older instructions
3. **Examples matter:** Code examples more influential than rules
4. **Context depth:** More context files make instructions stronger
5. **Semantic alignment:** Instructions matching prompt intent followed more

### Learning Regardless of Outcome
- If Copilot follows instructions: Governance works, learn what makes it effective
- If Copilot follows prompts: Governance needs improvement, learn what's missing
- If inconsistent: Most interesting case, learn about prioritization logic

## Potential Issues & Mitigations

### Issue: No Conflict Emerges
**Cause:** Architect too lenient or Developers too compliant
**Mitigation:** Facilitator encourages stronger opinions on both sides

### Issue: Personal Conflict
**Cause:** Competitive element becomes personal
**Mitigation:** Facilitator reminds roles are artificial, emphasizes learning over winning

### Issue: Copilot Blamed
**Cause:** Team avoids responsibility for communication
**Mitigation:** Focus on what instruction or prompt could improve outcome

### Issue: Time Runs Over
**Cause:** Deep discussions or implementation struggles
**Mitigation:** Strict time boxes, can extend reflection afterward

### Issue: One Role Dominates
**Cause:** Imbalanced skill levels or personalities
**Mitigation:** Rotate roles in second playthrough

## Success Indicators

### During Lab
- Healthy debate about approaches
- Multiple governance iterations
- Creative but respectful workarounds
- Copilot behavior patterns emerge
- Participants engaged and energized

### Post Lab
- Can articulate governance principles
- Understand Copilot prioritization
- Want to apply to real projects
- Appreciate opposing perspective
- Have concrete action items

## Extension Possibilities

### Advanced Variants
- **Three-way conflict:** Add Product Owner role with feature specs
- **Technical debt:** Introduce time pressure for shortcuts
- **Refactoring round:** Roles reverse and clean up
- **Metrics-driven:** Measure consistency quantitatively

### Integration with Other Labs
- **After Lab 06:** Apply conflict resolution to this scenario
- **Before Lab 07:** Practice planning before this chaos
- **With Lab 08:** Use prompt snippets as governance mechanism

### Real Project Application
- Use as team building exercise
- Discover team's actual governance preferences
- Create real copilot-instructions.md collaboratively
- Establish governance review process

## Facilitator Role

### Critical Interventions
- Keep time boundaries strict
- Prevent personal conflict
- Highlight interesting Copilot behaviors
- Encourage compromise and learning

### Hands-Off Areas
- Don't resolve technical debates
- Don't tell participants "right" answer
- Don't judge who "wins"
- Don't provide governance templates (they must discover)

### Discussion Facilitation
- Ask "why" behind choices
- Connect to real-world scenarios
- Draw out quiet participants
- Synthesize patterns across rounds

## Measurement & Iteration

### Feedback to Collect
- Role balance (fair? interesting?)
- Time allocation (enough? too much?)
- Conflict level (constructive? excessive?)
- Learning outcomes (clear? valuable?)
- Fun factor (engaging? frustrating?)

### Iteration Points
- Adjust time boxes based on feedback
- Refine role boundaries if too restrictive
- Add/remove rounds based on energy
- Modify scenario based on tech stack

## Philosophical Underpinnings

### Governance Philosophy
- Governance should enable, not just constrain
- Best governance emerges from real needs
- Over-governance is as bad as under-governance
- Communication > enforcement

### Learning Philosophy
- Experience > instruction
- Failure is data
- Multiple perspectives enrich understanding
- Play enables risk-taking

### Tool Philosophy (Copilot)
- Tools reflect and amplify team dynamics
- Instructions are team communication
- Consistency requires intentional effort
- AI augments, doesn't replace, judgment

---

## Open Questions for Future Exploration

1. Does instruction file location (global vs local) affect Copilot prioritization?
2. What's the optimal instruction specificity for different domains?
3. Can quantitative metrics predict governance effectiveness?
4. How does team size affect optimal governance style?
5. Do certain languages/frameworks need different governance approaches?

*These questions are intentionally left open for participants to explore.*
