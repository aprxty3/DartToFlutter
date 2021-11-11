void main(List<String> args) {
  //literals = semua nilai yg bisa dimasukan pasa variabel
  int age = 23;
  double ageOnMonth = 8.5;
  String name = 'Aji';
  bool isAlive = true;

  //string literals = variabel yg memiliki value, yg tipe datanya string atau text
  String myName = 'Aji';
  String myLast = "Prasetyo";
  String today = 'jum\'at';
  String tomorrow = "jum'at";
  print(today);
  print(tomorrow);

  //string interpolation = variabel yng dapat menggabungkan variabel dan ekspresi
  String message = 'Nama saya adalah ' + myName; //tidak direkomendasi
  String Message = 'Nama saya adalah $myName'; //Direkomendasi
  print(message);
  print(Message);
  print('Nama saya adalah $myName'); //Sangat Direkomendasi
  print('Jumlah karakter pada nama saya ${myName.length}');
}
