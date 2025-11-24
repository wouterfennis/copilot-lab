# Task Management API - Starter

## Project Brief
Build a simple task management API with the following features:

### Core Features (Minimum)
1. **Task CRUD Operations**
   - Create a new task
   - Read task(s)
   - Update task
   - Delete task

2. **Task Model**
   - ID (unique identifier)
   - Title (string)
   - Description (string)
   - Status (Todo / InProgress / Done)
   - Created date
   - Updated date

### Additional Features (Add in later rounds)
3. **User Authentication** (Round 3)
   - User registration
   - User login
   - Associate tasks with users

4. **Task Filtering** (Round 4)
   - Filter by status
   - Filter by date range
   - Search by title/description

## Project Structure

```
src/
  models/         (Developers create)
  services/       (Developers create)
  controllers/    (Developers create)
  utils/          (Developers create)

docs/
  ARCHITECTURE.md (Architect creates)
  CODING-STANDARDS.md (Architect creates)

.github/
  copilot-instructions.md (Architect creates)

tests/
  (Optional - if time permits)
```

## Technology Options

### Option 1: C# (.NET)
```
Models: Task, User, TaskStatus enum
Services: TaskService, AuthService
Storage: In-memory lists (for simplicity)
```

### Option 2: Python
```
Models: dataclasses or classes
Services: Functions or class methods
Storage: In-memory dictionaries/lists
```

### Option 3: TypeScript/Node.js
```
Models: Interfaces or types
Services: Functions or classes
Storage: In-memory arrays/maps
```

## Getting Started

### For the Architect
1. Create `.github/copilot-instructions.md` with your vision
2. Create `docs/ARCHITECTURE.md` explaining the approach
3. Create `docs/CODING-STANDARDS.md` with specific rules
4. Do NOT write any source code

### For Developers
1. Start implementing Task CRUD in `src/` (DON'T read governance docs yet!)
2. Use whatever patterns feel natural
3. After Round 1, discover the governance docs
4. Try to work within (or creatively around) the constraints

## Success Criteria

### Functional Requirements
- ✅ Can create, read, update, delete tasks
- ✅ Task data is properly structured
- ✅ Basic validation works

### Governance Challenge
- ✅ Code reflects some level of consistency
- ✅ Architect's vision is visible (even if not fully implemented)
- ✅ Developers found workable patterns
- ✅ Team learned about governance effectiveness

## Notes

- **Keep it simple:** Focus on the governance challenge, not building a production system
- **No databases:** Use in-memory storage to stay focused on patterns
- **No frameworks:** Plain code reveals patterns more clearly than framework magic
- **No UI:** API/functions only
- **Time-boxed:** Follow the round timers strictly

## Facilitator: Delete This Section Before Lab

### Pre-populate files for variations:

**Governance Archaeology variant:**
- Add mystery implementation with mixed patterns
- Include inconsistencies for Architect to discover

**Cooperative Governance variant:**
- Add template governance docs to start discussion

**Hostile Fork variant:**
- Create subdirectories with competing instruction files
