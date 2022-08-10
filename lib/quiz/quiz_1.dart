void quiz1() {
  print('A');
  Future(() => print('Future B'));
  Future.microtask(() => print('Microtask C'));
  print('D');
}
