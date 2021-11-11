void main(List<String> args) {
  var mahasiswa = {'nama': 'Aji', 'umur': 23, 'nim': 'NIM400123'};
  Map Mahasiswa = {'nama': 'Aji', 'umur': 23, 'nim': 'NIM400123'};
  // isi map adalah {'key' : 'value'}

  print(mahasiswa);
  print(Mahasiswa);

  //cara memanggil hanya nama
  print(Mahasiswa['nama']);

  //menampilkan key
  print(Mahasiswa.keys);

  //menampilkan value
  print(Mahasiswa.values);

  //mengecek map memiliki key tertentu
  print(Mahasiswa.containsKey('nama'));
  print(Mahasiswa.containsKey('makanan'));

  //mengecek values tertentu
  print(Mahasiswa.containsValue('Aji'));
  print(Mahasiswa.containsValue('Putri'));

  //mengembalikan panjang map
  print(Mahasiswa.length);

  //cara meremove key
  Mahasiswa.remove('nama');
  print(Mahasiswa);

  //mengubah value map
  Mahasiswa['umur'] = 30;
  print(Mahasiswa);
}
