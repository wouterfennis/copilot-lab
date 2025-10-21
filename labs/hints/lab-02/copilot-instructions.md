
# Copilot Instructions for Lab 02 (PowerShell)

## Advanced Code Quality Patterns
- Refactor duplicated logic into reusable functions or modules
- Use advanced error handling (`try/catch`, custom error messages)
- Ensure functions have clear responsibilities and descriptive names (PascalCase)
- Add comment-based help to all public functions
- Use parameter validation (`ValidateNotNullOrEmpty`, `ValidateRange`)
- Write Pester tests for all new/refactored code
- Prefer pipeline input and output for functions

## Example
```powershell
function Get-SingletonInstance {
    param()
    if (-not $script:Instance) {
        $script:Instance = New-Object PSObject
    }
    return $script:Instance
}
```

## Workflow
- Use Copilot agent mode to refactor and apply PowerShell patterns
- Update this file with new patterns discovered during refactoring
