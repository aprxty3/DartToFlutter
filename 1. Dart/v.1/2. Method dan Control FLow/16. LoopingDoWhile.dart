void main(List<String> args) {
  /*
  do {
    statement yang dijalankan selama condition bernilai true
  } while (condition);
  */

  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 20);

  int j = 1;
  do {
    if (j % 2 == 0) {
      print(j);
    }
    i++;
  } while (j <= 20);
}
