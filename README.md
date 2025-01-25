# Silent Failure in Dart Async Operation

This example demonstrates a common error in Dart asynchronous operations: failing to properly handle exceptions and propagate them up the call stack.

The `bug.dart` file shows an `async` function that fetches data from an API.  If an error occurs, it's caught but not properly re-thrown, leading to silent failure.  The solution (`bugSolution.dart`) demonstrates the correct way to handle exceptions.