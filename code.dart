
import 'dart:io';

void main() {
  // String Manipulation
  String str = "Hello, World!";
  print(str.substring(7, 12)); // Extracts "World"
  print(str.toLowerCase()); // Converts to lowercase
  print(str.toUpperCase()); // Converts to uppercase
  print(str.split(' ').reversed.join(' ')); // Reverses the string
  print(str.length); // Prints the length of the string
  print("$str This is string interpolation."); // String interpolation

  // Collections
  List<String> list = ["grape", "banana", "cherry"];
  list.add("date"); // Adds an item to the list
  list.remove("banana"); // Removes an item from the list
  for (String item in list) {
    print(item); // Iterates over the list
  }

  Set<int> set = {5, 2, 6};
  set.add(4); // Adds an item to the set
  set.remove(6); // Removes an item from the set
  for (int item in set) {
    print(item); // Iterates over the set
  }

  Map<String, int> map = {"apple": 1, "orange": 2, "cherry": 3};
  map["avocado"] = 4; // Adds an item to the map
  map.remove("cherry"); // Removes an item from the map
  for (String key in map.keys) {
    print("$key: ${map[key]}"); // Iterates over the map
  }

  // File Handling
  try {
    String data = File('input.txt').readAsStringSync();
    File('output.txt').writeAsStringSync(data.toUpperCase());
  } catch (e) {
    print("Error: $e"); // Handles errors during file operations
  }

  // Date and Time
  DateTime now = DateTime.now();
  DateTime tomorrow = now.add(Duration(days: 1));
  print(now.toString()); // Prints the current date and time
  print(tomorrow.toString()); // Prints the date and time of tomorrow
  print(tomorrow.difference(now)); // Calculates the difference between two dates
}

