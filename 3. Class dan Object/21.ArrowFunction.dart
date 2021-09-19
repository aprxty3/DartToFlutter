/*cara penulisan function
  tipe namaFungsi(parameter) => return nilai;
  */
void main() {
  String nama = 'Dwi Aji Prasetyo';
  perkenalan(nama);

  int sisi = 10;
  print(volumeKubus(sisi));

  print('nilai ${nilaiPhi()}');
}

void perkenalan(String nama) => print('halo, saya $nama');

int volumeKubus(int sisi) => sisi * sisi * sisi;

double nilaiPhi() => 3.14;
