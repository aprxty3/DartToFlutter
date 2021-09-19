Future<void> main(List<String> args) async {
  print(await printData());
  print('data telah selesai diload');
}

Future<String> printData() async {
  var data = await fetchData();
  return '$data';
}

Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => ('fetch data'),
  );
}
