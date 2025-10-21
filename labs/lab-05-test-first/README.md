# Lab 05: Test-First Prompting with GitHub Copilot

## Goal

Learn how writing tests (or test intentions) before implementation guides Copilot to produce higher-quality, constrained code.

## Scenario

You will create tests for a simple C# string utility and then prompt Copilot to implement the production code to satisfy them.

## Prerequisites

- Basic C# syntax knowledge (classes, methods, strings)
- xUnit (or similar) testing basics: Arrange / Act / Assert
- Ability to run `dotnet test` locally
- Understanding of whitespace and trimming edge cases

## Steps

1. Open `src/StringToolsTests.cs`.
2. Describe intended behavior in TODO comments.
3. Prompt: "Generate xUnit tests covering edge cases for these TODO behaviors.".
4. Refine tests (naming, clarity).
5. Prompt: "Generate the `StringTools` class so all tests pass; avoid regex unless needed.".
6. Run tests; iterate with Copilot for any failures.

## Prompts to Try

- "List 5 edge cases for trimming and collapsing whitespace in strings.".
- "Suggest property-based test cases for this method description.".
- "Explain why one test may be brittle and propose a refactor.".

## Acceptance Criteria

- Test file contains at least 5 meaningful tests.
- Generated implementation passes all tests.
- README updated with reflection: one improvement prompt you used.
