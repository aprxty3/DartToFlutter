void main(List<String> args) {
  /*
  while (condition) {
    statement yang akan dijalankan selama condition bernilai true
  }
  */

  int i = 1;
  while (i <= 20) {
    print(i);
    i++;
  }

  int j = 1;
  while (j <= 20) {
    if (j % 2 == 0) {
      print(j);
    }
    j++;
  }

  List makanan = ['Sate', 'Nasgor', 'Bakso'];
  int index = 0;
  while (index < makanan.length) {
    print(makanan[index]);
    index++;
  }
}
