# Dart Exception Handling: Try-Catch with Specific Exception Types

This example shows a common scenario where unhandled exceptions can lead to unexpected program termination in Dart.  It also demonstrates a best practice by handling specific exception types for more robust error management.

The `fetchData` function simulates an asynchronous operation. It might throw exceptions of different types, including a `TimeoutException` and a general `Exception`.  The `main` function shows the proper way to catch those exceptions and handle them gracefully.

## How to Run

1. Save the code as `bug.dart`.
2. Run it from your terminal using `dart bug.dart`.
3. Observe the output, which will show the type and message of the caught exception, along with a 'Program finished' message even when an exception occurs.

## Key Learning Points

* Using try-catch blocks for exception handling.
* Handling specific exception types like `TimeoutException`.
* Preventing unhandled exceptions from crashing the program.
* Writing more robust and resilient Dart code.