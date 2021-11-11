void main(List<String> args) {
  motor yamalub = new motor(roda: 4);
  yamalub.klakson();
  print(yamalub.suaraKlakson);
  yamalub.jumlahRoda(yamalub.roda);
}

class kendaraan {
  String suaraKlakson = 'tiinn tiiinnn';

  void klakson() {
    print(suaraKlakson);
  }

  void jumlahRoda(int roda) {
    print(roda);
  }
}

class mobil extends kendaraan {
  int roda;
  motor({this.roda});

  @override
  void jumlahRoda(int roda) {
    print('jumlah roda : $roda');
    super.jumlahRoda(roda);
  }
}

class motor extends kendaraan {
  int roda;
  motor({this.roda});

  @override
  void jumlahRoda(int roda) {
    print('jumlah roda : $roda');
    super.jumlahRoda(roda);
  }
}
