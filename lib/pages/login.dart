import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste_jukebox/components/backclick.dart';
import 'package:teste_jukebox/components/dialog.dart';
import 'package:teste_jukebox/pages/usuarios.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    Color primaryCollor = Color(0xFF161616);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Backclick(),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Image.asset(
                    "images/jukeboxlogo.png",
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                "Login",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: primaryCollor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => FullScreenDialog(),
                      fullscreenDialog: true,
                    ));
                  },
                  child: Text(
                    "Esqueci minha senha",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: primaryCollor,
              ),
              child: MaterialButton(
                minWidth: media.width,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListaUsuarios()));
                },
                child: Text(
                  "Logar",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: media.width / 3,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5, bottom: 2),
                        child: Text(
                          "ou",
                          style: GoogleFonts.roboto(
                              color: Colors.grey, fontSize: 18),
                        ),
                      ),
                      Container(
                        width: media.width / 3,
                        height: 1,
                        color: Colors.grey,
                      )
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
                left: 10,
                right: 10,
              ),
              child:OutlineButton(
                  onLongPress: () => () {},
                  borderSide: BorderSide(color: primaryCollor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
                    child: Text(
                      "Cadastrar",
                      style: GoogleFonts.roboto(
                        color: primaryCollor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      )),
    );
  }
}
