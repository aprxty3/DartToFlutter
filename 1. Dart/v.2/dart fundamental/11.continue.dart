void main(List<String> args) {
  // for (var i = 1; i <= 10; i++) {
  //   if (i == 5) {
  //     continue;
  //   }
  //   print(i);
  // }

  // for (var i = 1; i <= 3; i++) {
  //   for (var j = 1; j <= 3; j++) {
  //     if (i == 2 && j == 2) {
  //       continue;
  //     }
  //     print('$i $j');
  //   }
  // }

  outerLoop:
  for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) {
        continue outerLoop;
      }
      print('$i $j');
    }
  }
}
