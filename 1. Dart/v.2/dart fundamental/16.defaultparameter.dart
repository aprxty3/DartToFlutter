void main(List<String> args) {
  volume(4, 2);
}

void volume(int panjang, int lebar, {int tinggi: 4}) {
  print('hasil volumenya adalah ${panjang * lebar * tinggi}');
}
