void complexOperation() {
  print('A');
  _largeLoop();
  print('B');
  print('C');
}

void _largeLoop() {
  for (int i = 0; i < 100000; i++) {
    _doSomething();
  }
}

void _doSomething() {}
