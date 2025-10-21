
# Copilot Instructions for Lab 03 (.NET C#)

## Integration Testing and Quality Gates
- All modules/classes must have integration tests covering key interactions
- Use xUnit or NUnit for writing and running tests
- Ensure code passes linting and coverage checks before merging (e.g., StyleCop, Coverlet)
- Document test cases and expected outcomes using XML comments
- Use mocks/stubs for external dependencies in tests (e.g., Moq)
- CI pipeline must run all tests and quality checks

## Example
```csharp
[Fact]
public async Task TestApiIntegration()
{
    var app = new App();
    var result = await app.GetDataAsync();
    Assert.Equal(42, result);
}
```

## Workflow
- Use Copilot agent mode to identify and write missing tests
- Update this file with new testing patterns as needed
