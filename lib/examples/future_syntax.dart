void futureSyntaxThen() {
  print('Before the Future');
  Future(() {
    print('Future is running');
  }).then((_) {
    print('Future is complete');
  });
}

void futureSyntaxOnError() {
  print('Before the Future');
  Future(() {
    throw Exception();
  }).then((_) {
    print('Future is complete');
  }).onError((error, stackTrace) {
    print('Error catch: $error');
  });
  print('After the Future');
}

void futureSyntaxWhenComplete() {
  print('Before the Future');
  Future(() {
    throw Exception();
  }).then((_) {
    print('Future is complete');
  }).onError((error, stackTrace) {
    print('Error catch: $error');
  }).whenComplete(() {
    print('Future is completed with value or error');
  });
  print('After the Future');
}
