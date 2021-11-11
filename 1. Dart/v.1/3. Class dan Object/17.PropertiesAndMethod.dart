/*
class class_name {
  properties (instance variable)
  constructor
  methods (function)
  getters and setter
}

//contoh
class rekeningBank {
  properties
    -namapemilik
    -saldo
    -namabank
  methods
    -ceksaldo()
    -transfer()
    -ambilsaldo()
}
*/

void main() {
  RekeningBank rekeningBank = new RekeningBank();
  rekeningBank.cekSaldo();
  rekeningBank.transfer();
  rekeningBank.ambilSaldo();
  rekeningBank.namaPemilik = 'Dwi Aji Prasetyo';
  rekeningBank.namaBank = 'BCA';
  rekeningBank.saldo = 100000000;
  print(rekeningBank.namaPemilik);
  print(rekeningBank.namaBank);
  print(rekeningBank.saldo);
  rekeningBank.cekSaldo();

  print('------------------');

  RekeningBank rekeningPut =
      new RekeningBank(namaPemilik: 'Putri', namaBank: 'BBA', saldo: 500000);
  print(rekeningPut.saldo);
  rekeningPut.saldo();

  RekeningBank rekeningAji =
      new RekeningBank(namaPemilik: 'Aji', namaBank: 'BBAW', saldo: 200000);
  print(rekeningAji.saldo);
  rekeningAji.setSaldo = 500000;

  print(rekeningAji.saldo);
  print(rekeningAji.getSaldo);
}

class RekeningBank {
  String namaPemilik;
  String namaBank;
  int saldo;

  set setNamaPemilik(String nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String nama) {
    this.namaBank = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  RekeningBank({this.namaPemilik, this.namaBank, this.saldo});

  cekSaldo() {
    print('cek saldo');
  }

  transfer() {
    print('transfer saldo');
  }

  ambilSaldo() {
    print('ambil saldo');
  }
}
