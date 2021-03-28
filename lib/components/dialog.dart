import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FullScreenDialog extends StatefulWidget {
  @override
  FullScreenDialogState createState() => new FullScreenDialogState();
}

class FullScreenDialogState extends State<FullScreenDialog> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    Color primaryCollor = Color(0xFF161616);

    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: primaryCollor,
          title: new Text("Esqueci minha senha"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 10),
                  child:Text(
                    "Redefinir Senha",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: primaryCollor,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
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
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
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
                        labelText: 'Nova Senha',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 50),
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
                        labelText: 'Confirmar nova senha',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: primaryCollor,
                  ),
                  child: MaterialButton(
                    minWidth: media.width,
                    onPressed: () {},
                    child: Text(
                      "Redefinir",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ), padding: const EdgeInsets.symmetric(horizontal: 10),),
        )
    );
  }


}