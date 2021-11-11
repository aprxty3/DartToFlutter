void main(List<String> args) {
  /*
  switch(variable expression) {
    case value: {
      statement;
    }
    break;

    case value: {
      statement;
    }
    break;

    default: {
      statement;
    }
    break;
  }
  */

  var nilai = 'S';
  switch (nilai) {
    case 'A':
      print('Sangat baik');
      break;
    case 'B':
      print('Baik');
      break;
    case 'C':
      print('Cukup');
      break;
    case 'D':
      print('Kurang');
      break;
    case 'E':
      print('Kurang baik');
      break;
    default:
      print('Tidak valid');
      break;
  }
}
