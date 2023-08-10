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
                  title: Text('게시판',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  // 재목
                  Container(
                    width: 270,
                    child: Text('냥'),
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
                  child: Column(
                    children: [
                      Text('어쩌구 저쩌구',),
                      //작성자가 Image를 첨부한 경우 있는 경우 띄워야 함
                    ],
                  )
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                          width: 0.7,
                          color: Color(0xff005EB8),
                        )
                    )
                ),
                child: Row(
                  children: [
                    Image.asset('assets/comment.png', width: 20, height: 20,),
                    Text('4'), // 댓글 수 만큼 기록되어야 함
                  ],
                ),
              ),
              // 등록버튼 눌렀을 때 생성되는 ListView!!!
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              // 댓글 기능
              Padding(padding: EdgeInsets.only(left: 5)),
              CommentEdit(),
              TextButton(
                child: Text('등록'),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CommentEdit extends StatefulWidget {
  @override
  State createState() => CommentState();
}

class CommentState extends State<CommentEdit>{
  String comment ='';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 35,
      child: TextField(
        maxLines: null,
        expands: true,
        keyboardType: TextInputType.multiline,
        style: TextStyle(fontSize: 12, color: Color(0xff666666),),
        decoration: InputDecoration(
          hintText: '댓글',
          filled: true, fillColor: Color(0xffECECEC),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10),
          //   //borderSide: BorderSide(color: Color(0xff666666), width: 0.1),
          // )
        ),
        onChanged: (String str){
          setState(() => comment= str);
        },
      ),
    );
  }
}
