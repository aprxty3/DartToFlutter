import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Avatar_Glow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Glow'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AvatarGlow(
              endRadius: 150.0,
              glowColor: Colors.red,
              child: Material(
                // Replace this child with your own
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  backgroundImage: NetworkImage('https://picsum.photos/200'),
                  radius: 70.0,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Ini namanya Avatar Glow',
              style: GoogleFonts.nunitoSans(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
