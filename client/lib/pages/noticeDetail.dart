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
                  title: Text('공지사항',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
              ],
            )),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                // 재목
                Container(
                  width: 270,
                  child: Text('[장학] 컴퓨터공학과 장학내규'),
                ),
                // 제목 - 작성일자
                Text(
                  '작성일: 23.08.16',
                  style: TextStyle(fontSize: 10),
                )
              ]),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 0.5,
              ))),
            ),
            Container(
              // 내용
              height: 270,
              width: 350,
              margin: EdgeInsets.all(10),
              //padding: EdgeInsets.all(10),
              child: Text('가. 당해 학기 평균평점을 최우선 순위로 하여 선정한다. 어쩌구 저쩌구'),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  width: 0.7,
                  color: Color(0xff005EB8),
                ),
                top: BorderSide(
                  width: 0.7,
                  color: Color(0xff005EB8),
                ),
              )),
              child: Row(
                children: [
                  Icon(Icons.attach_file, size: 17),
                  Text(
                    '장학내규 기준.docx',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 70)),
            Column(
              //margin: EdgeInsets.all(10),
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(width: 0.5, color: Color(0xffBCBCBC)),
                  )),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        '다음글',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff333333)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '제4교학팀 위치 및 운영시간 안내',
                            style: TextStyle(
                                fontSize: 11, color: Color(0xff000000)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(width: 0.5, color: Color(0xffBCBCBC)),
                          bottom: BorderSide(
                            width: 0.5,
                            color: Color(0xffBCBCBC),
                          ))),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        '이전글',
                        style:
                            TextStyle(fontSize: 11, color: Color(0xff333333)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            '선후수면제 관련 공지',
                            style: TextStyle(
                                fontSize: 11, color: Color(0xff000000)),
                          ))
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 0.5,
                          color: Color(0xff005EB8),
                        )),
                    child: Text(
                      '목록으로',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                )
              ],
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
