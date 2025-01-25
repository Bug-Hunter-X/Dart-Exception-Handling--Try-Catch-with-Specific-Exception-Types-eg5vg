```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    // Throws an exception
    throw Exception('An error occurred!');
  } on TimeoutException catch (e) {
    print('TimeoutException caught: $e');
    // Handle TimeoutException specifically
    //Perhaps retry the operation or use a fallback mechanism
  } on Exception catch (e) {
    print('Exception caught: $e');
    // Handle other Exceptions
    // Log the error, display a user-friendly message, or implement a retry mechanism.
  } catch (e) {
    // Handle any other errors
    print('Unexpected error caught: $e');
    //In production, report the unexpected error for debugging and monitoring
  } finally {
    //Optional finally block executes regardless of exceptions
    print('fetchData operation finished');
  }
}

void main() async {
  await fetchData();
  print('Program finished.');
}
```