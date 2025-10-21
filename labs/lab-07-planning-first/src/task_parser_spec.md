# Task Parser Specification (Starter)

Input: Multi-line string, each non-empty line has 4 fields separated by `|`.

Fields:
\n1. ID -> integer > 0
2. Title -> non-empty string
3. Priority -> one of High|Medium|Low (case-insensitive)
4. Tags -> zero or more tags separated by `;` (no spaces trimmed)

Edge Cases (to include in plan):

- Empty lines
- Trailing spaces around fields
- Duplicate IDs
- Unknown priority value
- Missing fields (<4 parts)

Output: List of objects with shape:

```text
{
  Id: int,
  Title: string,
  Priority: string, // normalized to capitalized form
  Tags: List<string>,
  Errors?: List<string> // present if line malformed (optional design choice)
}
```

Do NOT implement yet. First produce and refine a plan.
