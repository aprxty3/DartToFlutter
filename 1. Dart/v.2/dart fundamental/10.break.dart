void main(List<String> args) {
  // for (var i = 1; i <= 10; i++) {
  //   print(i);
  //   if (i == 5) {
  //     break;
  //   }
  // }

  // for (int i = 1; i <= 3; i++) {
  //   for (int j = 1; j <= 3; j++) {
  //     print("$i $j");

  //     if (i == 2 && j == 2) {
  //       break;
  //     }
  //   }
  // }

  outerLoop:
  for (int i = 1; i <= 3; i++) {
    innerLoop:
    for (int j = 1; j <= 3; j++) {
      print("$i $j");

      if (i == 2 && j == 2) {
        break outerLoop;
      }
    }
  }
}
