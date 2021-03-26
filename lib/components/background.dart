import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget head;
  Background({this.head}) : super();

  @override
  Widget build(BuildContext context) {
    Color primaryCollor = Color(0xFF161616);
    Color secondaryCollor = Colors.black;

    return Container(
      height: MediaQuery.of(context).size.height,
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
          Positioned(
            bottom: 80,
            left: -80,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                color: secondaryCollor,
                borderRadius: BorderRadius.circular(180),
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            left: -50,
            child: Container(
              width: 230,
              height: 230,
              decoration: BoxDecoration(
                color: primaryCollor,
                borderRadius: BorderRadius.circular(190),
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            left: -20,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: secondaryCollor,
                borderRadius: BorderRadius.circular(250),
              ),
            ),
          ),
          Positioned(
            bottom: 180,
            left: 10,
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                color: primaryCollor,
                borderRadius: BorderRadius.circular(250),
              ),
            ),
          ),
          Positioned(
            right: -100,
            top: 280,
            child: Container(
              width: 260,
              height: 260,
              decoration: BoxDecoration(
                color: secondaryCollor,
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ),
          Positioned(
            right: -60,
            top: 310,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                color: primaryCollor,
                borderRadius: BorderRadius.circular(180),
              ),
            ),
          ),
          (head == null ? Container() : head)
        ],
      ),
    );
  }
}
