void main() {
  var mahasiswa = ['Dwi', 'Aji', 'Tyo'];
  List<String> Mahasiswa = ['Dwi', 'Aji', 'Tyo'];
  // dimulai dari index 0 -> 0, 1, 2

  var acak = ['Aji', 23, true];
  List contoh = ['Aji', 23, true];

  print(mahasiswa);
  print(acak);
  print(contoh);

  //mengembalikan nilai list pada index tertentu
  print(Mahasiswa[2]);
  print(Mahasiswa.elementAt(2));

  //mengembalikan panjang list
  print(Mahasiswa.length);

  //menambahkan list dengan nilai
  Mahasiswa.add('Daffa');
  print(Mahasiswa);

  //menambahkan list dengan list
  List<String> Mahasiswaa = ['Putri', 'Anissa', 'Puspa'];
  Mahasiswa.addAll(Mahasiswaa);
  print(Mahasiswa);

  //mengurutkan list sesuai abjad
  Mahasiswa.sort();
  print(Mahasiswa);

  //membalik list
  List<String> mhs = Mahasiswa.reversed.toList();
  print(mhs);

  //menghapus list
  Mahasiswa.clear();
  print(Mahasiswa);
}
