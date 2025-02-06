# Elixir Enum.each and throw Exception

This repository demonstrates an uncommon bug related to the interaction between `Enum.each` and the `throw` function in Elixir.  When an exception is thrown inside the anonymous function passed to `Enum.each`, it might not behave as expected regarding the remaining code execution outside the `Enum.each` function.

The `bug.exs` file showcases the unexpected behavior. The `bugSolution.exs` offers a safer solution using `try-catch` or alternative approaches.

## Bug Description
The issue arises from the way `Enum.each` handles exceptions.  A thrown exception escapes the anonymous function but may not immediately halt the execution of the surrounding code.