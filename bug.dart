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
  } on Exception catch (e) {
    print('Exception caught: $e');
    // Handle other Exceptions
  } catch (e) {
    // Handle any other errors
    print('Unexpected error caught: $e');
  }
}

void main() async {
  await fetchData();
  print('Program finished.');
}
```