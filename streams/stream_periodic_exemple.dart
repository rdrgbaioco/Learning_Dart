import 'dart:async';

void main() {

  // count one by one from 1 to 10
  final stream = Stream.periodic(const Duration(seconds: 1), (count) => count + 1).take(10);
  stream.forEach(print); // Similar to stream.listen((event) => print(event));

}