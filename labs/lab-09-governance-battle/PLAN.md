# Lab 09 Implementation Plan

## Pre-Lab Setup

### Facilitator Preparation
- [ ] Decide on technology stack (C#, Python, or TypeScript)
- [ ] Set up timer for rounds
- [ ] Prepare example governance docs as reference (don't show participants)
- [ ] Create shared workspace or repo with basic structure
- [ ] Brief participants on roles and rules

### Participant Assignments
- [ ] Assign Architect role (1 person)
- [ ] Assign Developer roles (1-3 people)
- [ ] Confirm everyone has VS Code with Copilot
- [ ] Ensure all participants can access shared workspace

## Lab Execution Checklist

### Round 1: Setup (10 min)
- [ ] Architect starts writing governance docs
- [ ] Developers start coding (without reading governance)
- [ ] Facilitator monitors for rule violations
- [ ] Timer: Alert at 5 min and 10 min marks

### Round 2: Conflict (15 min)
- [ ] Developers read governance docs
- [ ] Developers attempt refactoring with creative prompts
- [ ] Architect observes and updates governance
- [ ] Facilitator notes interesting Copilot behaviors
- [ ] Timer: Alert at 7 min and 15 min marks

### Round 3: Escalation (15 min)
- [ ] Developers add authentication feature
- [ ] Architect reviews code (read-only)
- [ ] Architect updates governance with compromises
- [ ] Facilitator tracks which guidelines Copilot follows
- [ ] Timer: Alert at 7 min and 15 min marks

### Round 4: Resolution (10 min)
- [ ] Group discusses findings
- [ ] Architect revises governance based on learnings
- [ ] Developers implement one final feature
- [ ] Group evaluates consistency
- [ ] Timer: 5 min discussion, 5 min final implementation

## Debrief Discussion Points

### Technical Observations
1. When did Copilot prioritize instruction files vs prompts?
2. What instruction patterns were most effective?
3. Where did conflicting guidance create inconsistency?
4. How did instruction specificity affect outcomes?

### Process Observations
1. How did the conflict feel for each role?
2. What communication would have helped?
3. When did governance help vs hinder?
4. What compromises emerged naturally?

### Learning Outcomes
1. What did you learn about Copilot's prioritization?
2. How should teams handle architectural disagreements?
3. What makes governance documentation effective?
4. When should rules be flexible vs strict?

## Follow-Up Activities

### Immediate (same session)
- [ ] Complete REFLECTION.md as a group
- [ ] Document key insights about Copilot behavior
- [ ] Identify real-world applications of learnings

### Later (next session)
- [ ] Try the lab again with roles swapped
- [ ] Experiment with one of the variations
- [ ] Apply learnings to actual project governance

## Facilitator Notes

### Common Issues
- **Developers ignore governance entirely:** Remind them to try working around it, not ignoring
- **Architect makes governance too vague:** Encourage specific examples
- **No conflict emerges:** Architect should make more opinionated rules
- **Too much conflict:** Remind participants this is about learning, not winning

### Signs of Success
- Healthy debate about trade-offs
- Governance evolves based on real feedback
- Developers find creative but respectful workarounds
- Group discovers Copilot's prioritization patterns
- Compromise solutions emerge

### Red Flags
- Personal conflict instead of technical debate
- Someone violating role boundaries
- Copilot being blamed for team communication issues
- No one learning about governance effectiveness

## Metrics to Track

### Quantitative
- Number of governance document updates
- Files created by Developers
- Lines of code vs lines of governance
- Copilot acceptance rate by round

### Qualitative
- Governance clarity improvement
- Developer frustration vs understanding
- Quality of compromise proposals
- Team alignment at end vs beginning

## Variation-Specific Plans

### Cooperative Governance
- Start with 15-min joint governance design
- Focus on consensus building techniques
- Measure time-to-agreement on conflicts

### Hostile Fork
- Allow competing instruction files
- Track which files Copilot prioritizes
- Measure codebase inconsistency

### Governance Archaeology
- Pre-populate with mystery codebase
- Architect documents discovered patterns
- Developers extend in various styles
- Compare documented vs actual patterns

## Success Metrics

Lab is successful if participants can:
- ✅ Articulate when Copilot follows instructions vs prompts
- ✅ Identify characteristics of effective governance
- ✅ Explain trade-offs between autonomy and consistency
- ✅ Apply learnings to real project scenarios
- ✅ Work constructively with conflicting technical opinions
