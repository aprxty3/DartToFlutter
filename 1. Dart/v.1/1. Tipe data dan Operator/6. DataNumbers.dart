void main() {
  num angka = 20; //bisa menerima angka int dan double
  int angka1 = 20; //hanya bisa menerima angka pasti
  double angka2 = 20.2575; //hanya menerima angka desimal
  print(angka);
  print(angka1);
  print(angka2);

  //mengecek tipe data
  print(angka.runtimeType);
  print(angka1.runtimeType);
  print(angka2.runtimeType);
  print(angka2.toString().runtimeType);

  //membuat angkat bulatan
  print(angka2.floor());
  print(angka2.ceil());
  print(angka2.round());

  //mengubah variabel ke double
  print(angka1.toDouble());

  //mengubah variabel ke interjer
  print(angka2.toInt());

  //membulatkan belakang koma
  print(angka2.toStringAsFixed(3));

  //menampilkan banyak angka dari depan
  print(angka2.toStringAsPrecision(3));
}
