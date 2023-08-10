import 'package:flutter/material.dart';

// controller 만들어서 TextField 값 저장하기

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //final TextEditingController titleController = TextEditingController();
  //final TextEditingController contentController = TextEditingController();

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
                  title: Text('게시글 작성',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                  leading: BackButton(
                    onPressed: (){},
                    color: Colors.black,
                  ),
                  actions: [
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.note_alt_outlined), color: Colors.black,)
                  ],
                ),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 370,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '제목'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 370,
                height: 500,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: '내용',
                  ),
                ),
              )
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
              margin: EdgeInsets.only(left: 10),
              height: 70,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                IconButton(
                  icon: ImageIcon(AssetImage('assets/image.png')),
                  onPressed: () {},
                ),
              ])),
        ),
      ),
    );
  }
}

