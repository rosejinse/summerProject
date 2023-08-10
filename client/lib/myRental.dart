import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  title: Text('내가 빌린 물품',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
              ],
            )),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Color(0xff005EB8),
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: Color(0xff005EB8),
                    ),
                  ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('물품(번호)', style: TextStyle(fontSize: 18),),
                  Text('대여일', style: TextStyle(fontSize: 18),),
                  Text('반납일', style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff666666),
                    width: 0.5,
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    child:Text('  ios 8핀(3)',
                        style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
                  ),

                  Container(
                    width: 60,
                    child: Text('23.05.04 13:00',
                        style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
                  ),
                  Container(
                    width: 60,
                    child: Text('23.05.05 13:00',
                        style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
                  ),

                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: ImageIcon(AssetImage('assets/home.png')),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: ImageIcon(AssetImage('assets/notification.png')),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: ImageIcon(AssetImage('assets/setting.png')),
                    onPressed: () {},
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

