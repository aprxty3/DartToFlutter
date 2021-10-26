void main(List<String> args) {
  try {
    depositeUang(-10000);
  } catch (error) {
    print(error.errorMessage());
  }
}

class DepositeException implements Exception {
  String errorMessage() {
    return 'kamu tidak bisa memasukan jumlah deposite dibawah 0';
  }
}

void depositeUang(int jumlahUang) {
  if (jumlahUang == 0) {
    throw new DepositeException();
  }
}
