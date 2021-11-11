void main(List<String> args) {
  sapi Sapi = new sapi();
  Sapi.metomama();
  Sapi.kakiempat();
  Sapi.metosapi();
}

mixin mama {
  void metomama() {
    print('method mamalia');
  }
}

mixin kaki {
  void kakiempat() {
    print('method berkaki empat');
  }
}

class sapi with mama, kaki {
  void metosapi() {
    print('method sapi');
  }
}
