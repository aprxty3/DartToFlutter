import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:relearn/flutter_package/avatar_glow.dart';

class IntroductionScreens extends StatelessWidget {
  const IntroductionScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.network("https://picsum.photos/seed/picsum/200/300",
                height: 175.0),
          ),
        ),
        PageViewModel(
          title: "Title of second page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.network("https://picsum.photos/seed/picsum/200/300",
                height: 175.0),
          ),
        )
      ],
      showNextButton: true,
      done: Text('done'),
      next: Text('next'),
      onDone: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Avatar_Glow(),
            ));
      },
    );
  }
}
