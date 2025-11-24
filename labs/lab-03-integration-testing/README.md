# Lab 03: Integration Testing and Quality Gates

This lab demonstrates how Copilot agent mode can help enforce integration testing and quality gates.

## Scenario

You are given a multi-module codebase with missing or incomplete integration tests. The instruction file documents testing standards and quality gate requirements.

## Prerequisites

You should be comfortable with:

- Difference between unit and integration tests
- Running a test framework (e.g., xUnit, pytest, Pester)
- Basic linting / formatting tools
- Reading simple CI output (optional)

## Assignment

1. Review `.github/copilot-instructions.md` for testing and quality gate standards.
2. Use Copilot agent mode to:
   - Identify missing integration tests
   - Write or improve integration tests
   - Ensure code passes all quality gates (lint, coverage, CI)
3. Update the instruction file with new testing patterns as needed.
4. Reflect: How did Copilot assist with test generation and quality enforcement?

**How to steer what kind of tests should be written?**

**How should those tests look like?**

**What are 'good' tests?**

**Remove the original `README.md` in this lab and replace it with a readme restricting copilot to use a specific way of testing.**

**Ask copilot to rewrite the plan, what changed?**

**Did the README instructions work just as good as the `.github/copilot-instructions.md`?**


## Files

- `src/` — Example code with integration points
- `.github/copilot-instructions.md` — Testing and quality gate instructions

Proceed to the `src` folder and `.github` for hands-on tasks.
