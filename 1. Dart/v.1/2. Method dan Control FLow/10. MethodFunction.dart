/*cara penulisan function
  tipe namaFungsi (parameter){
    kode
    kode
    return nilai (sesuai tipe);
  }
  */
void main() {
  String nama = 'Dwi Aji Prasetyo';
  perkenalan(nama);

  int sisi = 10;
  print(volumeKubus(sisi));
}

void perkenalan(String nama) {
  print('halo, saya $nama');
}

int volumeKubus(int sisi) {
  return sisi * sisi * sisi;
}
