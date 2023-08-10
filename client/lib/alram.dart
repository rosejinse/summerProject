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
                  title: Text('알림 내역',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
              ],
            )),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Color(0xff666666),
                      width: 0.5,
                ))
              ),
              child: Row(
                children: [
                  Image.asset('assets/comment_24.png'), // 이미지 깨짐
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('냥'),
                      Text('댓글이 달렸어요'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0xff666666),
                        width: 0.5,
                      ))
              ),
              child: Row(
                children: [
                  Image.asset('assets/notice.png', width: 24, height: 24, fit: BoxFit.fill,), // 이미지 깨짐
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('[장학] 컴퓨터공학과 장학내규'),
                      Text('공지사항이 업로드 됐어요'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Color(0xff666666),
                        width: 0.5,
                      ))
              ),
              child: Row(
                children: [
                  Image.asset('assets/tip.png', width: 24, height: 24, fit: BoxFit.fill,),
                  Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('우산 대여 개수 좀 늘려주세요ㅠ'),
                      Text('건의사항에 대한 답변이 왔어요'),
                    ],
                  )
                ],
              ),
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
                    icon: ImageIcon(AssetImage('assets/fullNotification.png')),
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
