import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [
                const Color(0Xd1d1d1),
                const Color(0x383838),
              ],
              begin: const FractionalOffset(1.0, 1.0),
              end: const FractionalOffset(1.0, 0),
              tileMode: TileMode.clamp),
        ),
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              margin: EdgeInsets.fromLTRB(80, 80, 0, 0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/water.png'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(0)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(100, 350, 0, 0),
              child: (Text(
                "Login",
                style: (TextStyle(
                    fontSize: 35,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
              )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
              child: TextField(),
            )
          ],
        ),
      ),
    );
  }
}
