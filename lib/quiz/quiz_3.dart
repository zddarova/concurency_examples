void quiz3() async {
  print('A');
  await Future(() => print('Future B1')).then((_) {
    print('Future B2 then');
  });
  Future.microtask(() => print('Microtask C'));
  print('D');
}
