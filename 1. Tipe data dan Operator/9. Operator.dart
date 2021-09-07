void main() {
  /*
  macam-macam operator yaitu ada :
  Aritmatic (jumlah, kurang, kali, bagi, modulo(sisa)) 
  Equality & Relational
  Logical

  Operands -> Representasi dari data
  Operator -> sesuatu yang dapat mengubah nilai (seperti tanda plus (+))
  */

// contoh aritmatika
  print('Aritmatika');
  var a = 4;
  var b = 19;
  print(a + b); //penjumlahan
  print(a - b); //pengurangan
  print(a * b); //perkalian
  print(a / b); //pembagian
  print(b % a); //modulo

  //contoh operands
  var c = a + b;
  print(c);
  var pertambahan = a + b;
  print(pertambahan);

  //contoh Equality & Relational
  print('Equality Relational Operator');
  print(a > b); //lebih dari
  print(a < b); //kurang dari
  print(a == b); //sama dengan
  print(a != b); //tidak sama dengan
  print(a >= b); //lebih dari atau sama dengan
  print(a <= b); //kurang dari atau sama dengan

  //Logical = operator boolean
  print('Logical Operator');
  bool x = true;
  bool y = false;
  print(x && y); //&& AND -> bernilai false apabila salah satu bernilai false
  print(!x); //! NOT -> Mengubah nilai menjadi berlawanan
}
