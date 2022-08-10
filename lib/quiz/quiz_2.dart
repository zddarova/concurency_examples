void quiz2() {
  print('A');
  Future(() => print('Future B1')).then((_) {
    print('Future B2 then');
  });
  Future.microtask(() => print('Microtask C'));
  print('D');
}
