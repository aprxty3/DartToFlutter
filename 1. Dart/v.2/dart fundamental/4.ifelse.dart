void main(List<String> args) {
  // Kondisi IF
  print('berapa hasil pertambahan 10 + 5 ?');

  //jika antara hasil pada int dan hasil pada if sama, maka akan muncul output
  //jika keduanya berbeda maka output tidak akan muncul
  int hasil = 15;
  print(hasil);
  if (hasil ==
      15) /* ubah angka 15 menjadi 10 jika ingin menampilkan output */ {
    print('Jawabanmu bener');
  }

  //Kondisi IF ELSE = kondisi jika hasil pada IF salah maka akan diganti dengan hasil ELSE

  if (hasil == 13) {
    print('Jawabanmu bener');
  } else {
    print('jawabanmu salah');
  }

  //Kondisi IF ELSE IF = jika memiliki benar pertama dan kedua benar dan yang ketiga salah
  //jika kondisi pertama benar, maka kondisi pertama dijalankan
  //jika kondisi kedua benar dan pertama salah, maka kondisi kedua dijalankan
  //jika kondisi pertama dan kedua salah, makan kondisi ketiga yang akan dijalankan

  int point = 100;
  print('poin $point');

  String grade;

  if (point >= 80) {
    grade = 'A';
  } else if (point >= 60) {
    grade = 'B';
  } else if (point >= 40) {
    grade = 'C';
  } else {
    grade = 'D';
  }

  print('Berarti nilai kamu adalah $grade');
}
