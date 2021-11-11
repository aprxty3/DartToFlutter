void main(List<String> args) {
  //Function Expression = Arrow Function
  print(myCompany());
  altluaspersegipanjang(4, 5);
}

String myCompany() => 'Jinrhu';

//Biasa
void luaspersegipanjang(int panjang, int lebar) {
  int luas = panjang * lebar;
  print('Luasnya adalah $luas');
}

//Function Expression
void altluaspersegipanjang(int panjang, int lebar) =>
    print('Luasnya adalah ${panjang * lebar}');
