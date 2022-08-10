void howAwaitWorks() {
  _howItLooks();
  _howItWorks();
}

void _howItLooks() async {
  await _getA();
  await _getB();
  await _getC();
  print('finish');
}

void _howItWorks() async {
  _getA().then(
    (a) {
      _getB().then(
        (b) {
          _getC().then((c) {
            print('finish');
          });
        },
      );
    },
  );
}

Future<void> _getA() async => print('A');
Future<void> _getB() async => print('B');
Future<void> _getC() async => print('C');

