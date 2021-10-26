void main(List<String> args) {
  // cuskota("Jakarta", 'Bandung', 'Semarang');
  altcuskota("Jakarta", 'Bandung');
}

//Require Parameter
// void cuskota(String kota1, String kota2, String kota3) {
//   print('kota 1 adalah $kota1');
//   print('kota 2 adalah $kota2');
//   print('kota 3 adalah $kota3');
// }

//Positional Parameter
void altcuskota(String kota1, String kota2, [String kota3]) {
  print('kota 1 adalah $kota1');
  print('kota 2 adalah $kota2');
  print('kota 3 adalah $kota3');
}
