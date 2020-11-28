import 'package:flutter/material.dart';
import '../../colors.dart';
import 'ai/ai.dart';
import 'play.dart';

class Difficulty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: charlestonGreen,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            title: Text('Difficulty',
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
              height: 290,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlayPage(
                            difficulty: GameDifficulty.Easy,
                          ),
                        ),
                      );
                    },
                    child: Text('Easy',
                        style: TextStyle(
                            color: Colors.white38,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlayPage(
                                  difficulty: GameDifficulty.Medium,
                                )),
                      );
                    },
                    child: Text('Medium',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlayPage(
                                  difficulty: GameDifficulty.Hard,
                                )),
                      );
                    },
                    child: Text('Hard',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ))),
    );
  }
}
