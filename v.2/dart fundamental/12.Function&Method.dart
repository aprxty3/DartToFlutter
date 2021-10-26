void main(List<String> args) {
  helloworld();
  luaspersegipanjang(4, 2);
  int keliling = kelilingpersegipanjang(3, 5);
  print("kelilingnya adalah $keliling");
}

void helloworld() {
  print('Hello World');
}

void luaspersegipanjang(int panjang, int lebar) {
  int luas = panjang * lebar;
  print("Luasnya adalah $luas");
}

int kelilingpersegipanjang(int panjang, int lebar) {
  int keliling = 2 * (panjang + lebar);
  return keliling;
}
