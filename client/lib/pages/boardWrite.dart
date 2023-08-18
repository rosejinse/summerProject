// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// // controller 만들어서 TextField 값 저장하기
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   //final TextEditingController titleController = TextEditingController();
//   //final TextEditingController contentController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: PreferredSize(
//             preferredSize: Size.fromHeight(80.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 AppBar(
//                   title: Text('게시글 작성',
//                       style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
//                   centerTitle: true, // 글자 가운데 정렬
//                   backgroundColor: Colors.white,
//                   leading: BackButton(
//                     onPressed: (){},
//                     color: Colors.black,
//                   ),
//                   actions: [
//                     IconButton(
//                       // 확인 팝업창 띄우기
//                       onPressed: () {
//                         showDialog(
//                           context: context,
//                           barrierDismissible: false,
//                           builder: (BuildContext context) => DialogExample(),
//                         );
//                       },
//                         icon: Icon(Icons.note_alt_outlined), color: Colors.black,)
//                   ],
//                 ),
//               ],
//             )),
//         body: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Container(
//                 margin: EdgeInsets.only(left: 10),
//                 width: 370,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: '제목'
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 10),
//                 width: 370,
//                 height: 500,
//                 child: TextField(
//                   maxLines: null,
//                   expands: true,
//                   keyboardType: TextInputType.multiline,
//                   decoration: InputDecoration(
//                     hintText: '내용',
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//
//         bottomNavigationBar: BottomAppBar(
//           child: Container(
//               margin: EdgeInsets.only(left: 10),
//               height: 70,
//               child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//                 IconButton(
//                   icon: ImageIcon(AssetImage('assets/image.png')),
//                   onPressed: () {},
//                 ),
//               ])),
//         ),
//       ),
//     );
//   }
// }
//
// class DialogExample extends StatelessWidget {
//   const DialogExample({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoAlertDialog(
//       title: const Text('게시물을 등록하시겠습니까?'),
//       actions: <CupertinoDialogAction>[
//         CupertinoDialogAction(
//           onPressed: (){},
//           child: const Text('예'),
//         ),
//         CupertinoDialogAction(
//           onPressed: (){},
//           child: const Text('아니오', style: TextStyle(color: Color(0xffE05E3F)),),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(const BoardWriteScreen());
}

class BoardWriteScreen extends StatefulWidget {
  const BoardWriteScreen({Key? key}) : super(key: key);

  @override
  State<BoardWriteScreen> createState() => _BoardWriteScreenState();
}

class _BoardWriteScreenState extends State<BoardWriteScreen> {
  TextEditingController boardTitle = TextEditingController();
  TextEditingController boardContent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
                  title: Text('게시글 작성',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        if (boardTitle.text.isEmpty && boardContent.text.isEmpty) {
                          // 안내 메시지로 '제목과 내용을 입력하세요' 띄우기
                          Fluttertoast.showToast(
                            msg: "제목과 내용을 입력하세요.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Color(0xffD8D8D8),
                            textColor: Colors.black,
                            fontSize: 13,
                          );
                        } else if (boardTitle.text.isEmpty) {
                          // 안내 메시지로 '제목을 입력하세요' 띄우기
                          Fluttertoast.showToast(
                            msg: "제목을 입력하세요.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Color(0xffD8D8D8),
                            textColor: Colors.black,
                            fontSize: 13,
                          );
                        } else if (boardContent.text.isEmpty) {
                          // 안내 메시지로 '내용을 입력하세요' 띄우기
                          Fluttertoast.showToast(
                            msg: "내용을 입력하세요.",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Color(0xffD8D8D8),
                            textColor: Colors.black,
                            fontSize: 13,
                          );
                        } else {
                          // 정상적으로 모든 입력값이 들어간 경우
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) => DialogExample(),
                          );
                        }
                      },
                      icon: Icon(Icons.note_alt_outlined),
                      color: Colors.black,
                    )
                  ],
                ),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 370,
                        child: TextField(
                          controller: boardTitle,
                          decoration: InputDecoration(
                            hintText: '제목',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 370,
                        height: 500,
                        child: TextField(
                          controller: boardContent,
                          maxLines: null,
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: '내용',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomAppBar(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: ImageIcon(AssetImage('assets/image.png')),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('게시물을 등록하시겠습니까?', style: TextStyle(fontWeight: FontWeight.w100)),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('예'),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('아니오', style: TextStyle(color: Color(0xffE05E3F))),
        ),
      ],
    );
  }
}



