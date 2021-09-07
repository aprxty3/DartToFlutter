void main() {
  String nama = ' Dwi Aji Prasetyo ';
  String daftarHewan = "kucing, kuda, kelinci";
  var angka = 23;
  print(nama);

  //mengecek string tertentu
  print(nama.contains('Aji'));
  print(nama.contains('aji'));

  //mengubah menjadi huruf kecik
  print(nama.toLowerCase());

  //mengubah menjadi huruf besar
  print(nama.toUpperCase());

  //mengubah angka menjadi string
  print(angka.toString());

  //mengubah menjadi list
  print(daftarHewan.split(','));
  print(daftarHewan.split(', ')[0]);

  //menampilkan substring
  print(nama.substring(4, 7));
  // 4 -> mulai (masuk)
  // 7 -> akhir (selesai)

  //menampilkan panjang string
  print(nama.length);

  //menghilangkan spasi didepan dan dibelakang
  print(nama.trim());

  //menghilangkan spasi dibelakang
  print(nama.trimRight());

  //menghilangkan spasi didepan
  print(nama.trimLeft());

  //Mendapatkan nilai ASCII
  print(nama.codeUnitAt(1));

  //menampilkan index karakter dalam string
  print(nama.indexOf('R'));

  //mengecek diawalai dengan nilai string
  print(nama.startsWith(' Dwi'));

  //mengecek diakhir dengan nilai string
  print(nama.endsWith('Prasetyo'));

  //mengecek string tersebut kosong
  var kosong = "";
  print(kosong.isEmpty);
  //cek string tersebut tidak kosong
  print(kosong.isNotEmpty);
}
