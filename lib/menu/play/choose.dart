import 'package:flutter/material.dart';
import '../../colors.dart';
import 'difficulty.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: charlestonGreen,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            title: Text('Choose',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                )),
            centerTitle: true,
            backgroundColor: davysGrey,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, size: 35),
              onPressed: () => {Navigator.pop(context)},
            ),
          )),
      body: Center(
          child: Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 150,
              decoration: BoxDecoration(
                  color: davysGrey,
                  border: Border.all(color: Colors.white70, width: 5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: cultured2),
                    child: FlatButton(
                      color: cultured2,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Difficulty()),
                        );
                      },
                      child: Text('X',
                          style: TextStyle(
                              color: davysGrey,
                              fontSize: 74,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Text('Pick',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                        color: cultured2),
                    child: FlatButton(
                      color: cultured2,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Difficulty()),
                        );
                      },
                      child: Text('0',
                          style: TextStyle(
                              color: davysGrey,
                              fontSize: 74,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ))),
    );
  }
}
