import 'package:flutter/material.dart';
import 'package:tictactoe/menu/menu.dart';
import '../colors.dart';

class Play extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            title: Text('Play',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                )),
            centerTitle: true,
            backgroundColor: davysGrey,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, size: 35),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                )
              },
            ),
          )),
      backgroundColor: charlestonGreen,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 40, left: 55, right: 55),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/img/Player.png'),
                  Image.asset('assets/img/Draw.png'),
                  Image.asset('assets/img/Bot.png'),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10, left: 63, right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Wins',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text('Draws',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text('Wins',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 10, left: 80, right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text('0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text('0',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 30, left: 42, right: 42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 2, left: 42, right: 42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 2, left: 42, right: 42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                    Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: cultured2),
                        child: Center(
                          child: Text('X',
                              style: TextStyle(
                                  color: davysGrey,
                                  fontSize: 78,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
