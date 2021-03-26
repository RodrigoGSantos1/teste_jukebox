import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Backclick extends StatelessWidget {
  Widget head;
  Backclick({this.head}) : super();

  @override
  Widget build(BuildContext context) {
    Color primaryCollor = Color(0xFF161616);
    Color secondaryCollor = Colors.black;

    return ClipPath(
      clipper: WaveClipperOne(),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.5,
        width: MediaQuery.of(context).size.width,
        color: primaryCollor,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: -110,
              top: -110,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: secondaryCollor,
                  borderRadius: BorderRadius.circular(300),
                ),
              ),
            ),
            Positioned(
              left: -40,
              top: -40,
              child: Container(
                decoration: BoxDecoration(
                  color: primaryCollor,
                  borderRadius: BorderRadius.circular(150),
                ),
                width: 300,
                height: 300,
              ),
            ),
            Positioned(
              left: -30,
              top: -40,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: secondaryCollor,
                  borderRadius: BorderRadius.circular(250),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: primaryCollor,
                  borderRadius: BorderRadius.circular(200),
                ),
              ),
            ),
            Positioned(
              bottom: -10,
              right: -40,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  color: secondaryCollor,
                  borderRadius: BorderRadius.circular(180),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: -20,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: primaryCollor,
                  borderRadius: BorderRadius.circular(190),
                ),
              ),
            ),
            (head == null ? Container() : head)
          ],
        ),
      ),
    );
  }
}
