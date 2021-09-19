Future<void> main(List<String> args) async {
  print(await printData());
  print('data telah selesai diload');
}

Future<String> printData() async {
  try {
    var data = await fetchData();
    return '$data';
  } catch (err) {
    return printData();
  }
}

Future<String> fetchData() {
  return Future.delayed(
    Duration(seconds: 2),
    () => throw ('fetch data'),
  );
}
