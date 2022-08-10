void asyncExample() async {
  print('A');
  var response = await Future.delayed(
    const Duration(seconds: 1),
  ).then((_) => 'B');
  print('Response: $response');
  print('C');
}