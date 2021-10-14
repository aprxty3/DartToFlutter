void main(List<String> args) {
  String hurufmutu = 'e';
  String komentar;

  switch (hurufmutu) {
    case 'a':
      {
        komentar = 'sangat baik';
        break;
      }
    case 'b':
      {
        komentar = 'baik';
        break;
      }
    case 'c':
      {
        komentar = 'cukup';
        break;
      }
    case 'd':
      {
        komentar = 'kurang';
        break;
      }
    default:
      {
        komentar = 'Huruf mutu yang kamu masukan salah';
      }
  }
  print(komentar);
}
