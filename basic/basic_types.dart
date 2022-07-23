
// - Fixed Named Constant Values With Enumeration (enum)
// - Function-Type Alias (typedef)
// - Dynamic Objects (dynamic)
// - Basic Types (int, double, num, String, bool, void)
// - Collection Arrays Types (List, Map, Set, Iterable)

import 'dart:collection';

enum EnumSimpleExemple { hasData, noData, loadingData, savedData, idle, error }

enum EnhancedEnumExemple {

  hasData(message: 'There is data, and can be saved'),
  noData(message: 'There is no data'),
  loadingData(message: 'Loading data now'),
  savedData(message: 'The data has been saved'),
  idle(message: 'Stopped'),
  error(message: 'Error occurred');

  const EnhancedEnumExemple({required this.message});
  final String message;

}

typedef void LoggerOutputFunction(String msg);
LoggerOutputFunction typedefExemple = (String msg) => print(msg);

void voidExemple() => print('To be printed');

void main() {

  // Enumeration
  EnumSimpleExemple enumSimpleExemple = EnumSimpleExemple.idle;
  print(enumSimpleExemple.name);

  EnhancedEnumExemple enumAdvancedExemple = EnhancedEnumExemple.idle;
  print(enumAdvancedExemple.message);

  // Function-Type Alias
  typedefExemple('Hello World');

  // Integer
  int integerExemple = 10;
  print(integerExemple);

  // Double
  double doubleExemple = 5.50;
  print(doubleExemple);

  // Num
  num numExemple = 10;
  print(numExemple);

  // String
  String stringExemple = 'Hi World';
  print(stringExemple);

  // Boolean
  bool booleanExemple = true;
  print(booleanExemple);

  // Void (In function without return)
  voidExemple();

  // Collection List (Array)
  List<String> listExemple = ['List', 'Exemple'];
  print(listExemple);

  // Collection Map
  Map<String, String> mapExemple = {'Map': 'Exemple'};
  print(mapExemple);

  // Collection Set
  Set<String> setExemple = {'Set', 'Exemple'};
  print(setExemple);

  // Collection Iterable List Queue
  Queue queueExemple = Queue<String>();
  queueExemple.add('Queue');
  queueExemple.add('Exemple');
  print(queueExemple);

  // Collection Iterable (values or elements)
  Iterable<String> iterableExemple = ['Iterable', 'Exemple'];
  print(iterableExemple);

  // Dynamic - Allows exchanging types and values at runtime.
  dynamic dynamicExemple; // Now it is a null value.
  dynamicExemple = 'Now it is a String';
  dynamicExemple = 10.5; // Now it is a double
  dynamicExemple = 10; // Now it is an integer
  dynamicExemple = true; // Now it is a boolean
  dynamicExemple = {'dynamic': 'Exemple'}; // Now it is a map
  dynamicExemple = ['dynamic', 'Exemple']; // Now it is a list
  print(dynamicExemple);
}