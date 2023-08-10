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
                  title: Text('내가 쓴 글',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
              ],
            )),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xff666666),
                    width: 0.5,
                  )
                )
              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              child: TextButton(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('스터디 같이 하실 분 구합니다', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                      Text('1학년 1학기 C언어프로그래밍 조세형 교수님 강의 스터디하실 분 구합니다.',style: TextStyle(color: Colors.black),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/comment_24.png', width: 17, height: 17,),
                          Padding(
                            padding: EdgeInsets.all(3),
                          ),
                          Text('4', style: TextStyle(color: Colors.black),),
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
                          Text('06/05', style: TextStyle(color: Colors.black),),
                        ],
                      ),
                    ],
                  ),
                  onPressed: () {}),
            ),
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

// 댓글 이미지 깨짐 -> 수정 필요