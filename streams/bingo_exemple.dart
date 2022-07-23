import 'dart:async';
import 'dart:math';

Future<void> main() async {
  final bingo = Bingo();
  final bingoCard = [4, 8, 15];

  bingo.start();

  final subscription = bingo.numbers.listen((event) {
    if (bingoCard.contains(event)) {
      print("Marcado! Temos o $event");
      bingoCard.remove(event);
    } else if(bingoCard.isEmpty) {
      print("BINGOOO!");
      bingo.stop();
    } else {
      print("Não foi dessa vez");
    }
  });

  await bingo.isDone;
  subscription.cancel();

}

class Bingo {
  final _bingoController = StreamController<int>();

  Stream<int> get numbers => _bingoController.stream;
  Future get isDone => _bingoController.done;

  void start() async {
    while (!_bingoController.isClosed) {
      _bingoController.add(Random().nextInt(50));
      await Future.delayed(Duration(milliseconds: 200));
    }
  }

  void stop() => _bingoController.close();
}

StreamTransformer<int, int> marker() => StreamTransformer<int, int>.fromHandlers(
  handleData: (number, sink) {
    if (number == 4 || number == 8 || number == 15) {
      sink.add(number);
    } else {
      sink.addError("Não foi dessa vez");
    }
  }
);
