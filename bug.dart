```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access the data (e.g. jsonData['key'])
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the error
    print('Error fetching data: $e');
    // Rethrow the error if you want to handle it further up the call stack.
    rethrow; // This is important for proper error handling
  }
}
```