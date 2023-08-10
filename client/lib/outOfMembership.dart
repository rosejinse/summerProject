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
                  title: Text('회원탈퇴',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('@@@님', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text('정말 탈퇴하시겠어요?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Row(
                  children: [
                    Image.asset('assets/warning.png', width: 17, height: 17),
                    Padding(padding: EdgeInsets.all(3)),
                    Text('지금 탈퇴하시면 대여하신 물품을 즉시 반납하셔야 해요!', style: TextStyle(fontSize: 12)),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 7)),
                Row(
                  children: [
                    Image.asset('assets/warning.png', width: 17, height: 17),
                    Padding(padding: EdgeInsets.all(3)),
                    Container(
                      width: 320,
                      child: Text('탈퇴 후에는 작성하신 글/댓글을 수정 혹은 삭제하실 수 없어요. 탈퇴 전에 확인해 주세요!', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    // 체크박스
                    Text('회원 탈퇴 유의사항을 확인하였으며 동의합니다.', style: TextStyle(color: Color(0xff666666), fontSize: 12),),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Text('떠나시는 이유를 알려주세요.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(top: 10)),
                InputWhy(),
                Padding(padding: EdgeInsets.only(top: 150)),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff333333),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: double.infinity,
                  height: 50,
                  child:  TextButton(
                      onPressed: (){},
                      child: Text('회원 탈퇴', style: TextStyle(color: Color(0xff666666), fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                  ),

                )

              ],
            ),
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

class InputWhy extends StatefulWidget {
  @override
  State createState() => InputState();
}

class InputState extends State<InputWhy>{
  String input ='';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 160,
      child: TextField(
        maxLines: null,
        expands: true,
        keyboardType: TextInputType.multiline,
        style: TextStyle(fontSize: 15, color: Color(0xff666666),),
        decoration: InputDecoration(
            hintText: '서비스 탈퇴 사유에 대해서 알려주세요.',
            filled: true, fillColor: Color(0xffECECEC),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   //borderSide: BorderSide(color: Color(0xff666666), width: 0.1),
            // )
        ),
        onChanged: (String str){
          setState(() => input = str);
        },
      ),
    );
  }
}

