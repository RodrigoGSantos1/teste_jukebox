import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryCollor = Color(0xFF161616);

    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: (){},
          child: Text(
            "Esqueci minha senha?",
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                color: primaryCollor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
