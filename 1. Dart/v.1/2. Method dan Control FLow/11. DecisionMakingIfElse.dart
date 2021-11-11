void main(List<String> args) {
  /* DecisionMaking
  penjelasan :
  if(boolean expression){
    dieksekusi apabila boolean expression bernilai true
  } else {
    dieksekusi apabila boolean expression bernilai false
  }
  */

//contoh 1
  int angka = 6;
  if (angka % 2 == 0) {
    print('genap');
  } else {
    print('ganjil');
  }

  //contoh 2
  String nama = 'Aji';
  if (nama == 'Aji') {
    print('Yap 100!');
  } else {
    print('coba lagi kawand');
  }

  // contoh boolean bertingkat (nested)
  int angkat = 5;
  if (angkat == 0) {
    print('NOL');
  } else {
    if (angkat % 2 == 0) {
      print('Genap');
    } else {
      print('Ganjil');
    }
  }
}
