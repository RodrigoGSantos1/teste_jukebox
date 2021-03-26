import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:teste_jukebox/components/backclick.dart';

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryCollor = Color(0xFF161616);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
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
                "Insira os Dados A seguir: ",
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
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Nome',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: TextField(
                inputFormatters: [MaskTextInputFormatter(mask: "##/##/####")],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Data de Nascimento',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: FlatButton(
                    onPressed: () {},
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
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: primaryCollor,
                ),
                child: MaterialButton(
                  padding: EdgeInsets.only(
                      left: 145, right: 145, top: 12, bottom: 10),
                  onPressed: () {},
                  child: Text(
                    "Logar",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 60),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 60, bottom: 0.5, right: 60, top: 0.5),
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
                        padding: EdgeInsets.only(
                          left: 60,
                          bottom: 0.5,
                          right: 60,
                          top: 0.5,
                        ),
                        color: Colors.grey,
                      )
                    ],
                  ),
                )),
            Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                child: OutlineButton(
                    onLongPress: () => () {},
                    borderSide: BorderSide(color: primaryCollor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: MaterialButton(
                      padding: EdgeInsets.only(
                          left: 110, right: 110, top: 12, bottom: 12),
                      onPressed: () {},
                      child: Text(
                        "Cadastrar",
                        style: GoogleFonts.roboto(
                          color: primaryCollor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    onPressed: () {})),
          ],
        ),
      )),
    );
  }
}
