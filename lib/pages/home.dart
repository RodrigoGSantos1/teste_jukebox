import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_jukebox/components/background.dart';
import 'package:teste_jukebox/pages/form.dart';

import 'Login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Color(0xFF131A40),
        ),
        child: Scaffold(
            body: SingleChildScrollView(
          child: SafeArea(
              child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Background(),
              Padding(
                padding: EdgeInsets.only(top: 70, left: 30, right: 30),
                child: Container(
                  child: Image.asset(
                    "images/jukeboxlogo.png",
                  ),
                ),
              ),
              Positioned(
                bottom: 160,
                left: 10,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: MaterialButton(
                    minWidth: media.width,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Formulario()));
                    },
                    child: Text(
                      "Cadastrar",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 90,
                left: 10,
                right: 10,
                child: OutlineButton(
                    onLongPress: () => () {},
                    borderSide: BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Logar",
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    }),
              ),
            ],
          )),
        )));
  }
}
