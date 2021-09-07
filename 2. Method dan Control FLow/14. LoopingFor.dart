void main() {
  /*
  for (initial_value; termination_conditionl step) {
    statement
  }
  */

  //menggunakan for
  int n = 20;
  for (int i = 1; i <= n; i++) {
    print(i);
  }

  int m = 20;
  for (int j = 1; j <= m; j++) {
    if (j % 2 == 0) {
      print(j);
    }
  }

  //menggunakan List
  List makanan = ['Sate', 'Nasgor', 'Bakso'];
  print('Daftar Makanan');
  for (int i = 0; i < makanan.length; i++) {
    print(makanan[i]);
  }
}
