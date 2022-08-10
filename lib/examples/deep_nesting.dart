void deepNesting() {
  _someAsyncOperation().then((_) {
    _anotherAsyncOperation().then((_) {
      _andAnotherAsyncOperation().then((_) {
        _oneMoreAsyncOperation().then((_) {
          print('finish');
        });
      });
    });
  });
}

void withoutdDeepNesting() async {
  await _someAsyncOperation();
  await _anotherAsyncOperation();
  await _andAnotherAsyncOperation();
  await _oneMoreAsyncOperation();
  print('finish');
}

const duration = Duration(milliseconds: 200);
Future<void> _someAsyncOperation() async {
  await Future.delayed(duration);
  print('someAsyncOperation');
}

Future<void> _anotherAsyncOperation() async {
  await Future.delayed(duration);
  print('anotherAsyncOperation');
}

Future<void> _andAnotherAsyncOperation() async {
  await Future.delayed(duration);
  print('andAnotherAsyncOperation');
}

Future<void> _oneMoreAsyncOperation() async {
  await Future.delayed(duration);
  print('oneMoreAsyncOperation');
}
