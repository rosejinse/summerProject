import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

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
                  title: Text('설정',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
              ],
            )),
        body: SingleChildScrollView( // 스크롤바
          child: Column(
            children: [
              // 회원 정보
              Container(
                //width: double.infinity,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Color(0xff757171),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/user.png',
                      width: 30,
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('컴퓨터공학과'),
                        Text('60212583 한단비'),
                      ],
                    ),
                  ],
                ),
              ),
              // 알림 설정
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Color(0xff757171),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' 알림 설정',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          child: Text(
                            '댓글 알림',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                        SwitchBtn(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          child: Text(
                            '공지사항 알림',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                        SwitchBtn(),
                      ],
                    )
                  ],
                ),
              ),
              // 내가 쓴 글
              Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Color(0xff757171),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    TextButton(
                      child: Text(
                        '내가 쓴 글',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    )
                  ])),
              // 댓글 단 글
              Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Color(0xff757171),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    TextButton(
                      child: Text(
                        '댓글 단 글',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    )
                  ])),
              // 내가 빌린 물품
              Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Color(0xff757171),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    TextButton(
                      child: Text(
                        '내가 빌린 물품',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    )
                  ])),
              // 기타
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Color(0xff757171),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ' 기타',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      child: Text('회원 정보 수정', style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('회원 탈퇴', style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text('로그아웃', style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
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
                    icon: ImageIcon(AssetImage('assets/fullSetting.png')),
                    onPressed: () {},
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class SwitchBtn extends StatefulWidget {
  const SwitchBtn({Key? key}) : super(key: key);

  @override
  State<SwitchBtn> createState() => _SwitchBtnState();
}

class _SwitchBtnState extends State<SwitchBtn> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}
