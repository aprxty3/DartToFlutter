void main(List<String> args) {
  //condition ? expression1 : expression2
  print('berapakah hasil pertambahan dari 10 + 5?');
  int hasil = 10;
  print(hasil);

  String hasiljawaban =
      hasil == 15 ? 'jawaban kamu benar' : 'jawaban kamu salah';
  print(hasiljawaban);
  // expression1 ?? expression2
  int angka1 = 5;
  int angka2 = 7;
  int angka3;

  angka1 = angka1 ?? 0;
  angka2 = angka2 ?? 0;
  angka3 = angka3 ?? 0;

  int hasilpertambahan = angka1 + angka2;
  int hasilpertambahan1 = angka3 + angka2;
  print('$angka1 + $angka2 = $hasilpertambahan');
  print('$angka3 + $angka2 = $hasilpertambahan1');
  //perbedaannya hanya pada operatornya
}
