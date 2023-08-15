import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AlertDialogExampleApp());

class AlertDialogExampleApp extends StatelessWidget {
  const AlertDialogExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  title: Text('게시글 작성',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true,
                  // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                  leading: BackButton(
                    onPressed: () {},
                    color: Colors.black,
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => DialogExample(),
                        );
                      },
                      icon: Icon(Icons.note_alt_outlined), color: Colors.black,
                    )
                  ],
                ),
              ],
            ),
          ),
          body: const Center(
            //child: DialogExample(),
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
      title: const Text('게시물을 등록하시겠습니까?'),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          onPressed: (){},
          child: const Text('예'),
        ),
        CupertinoDialogAction(
          onPressed: (){},
          child: const Text('아니오', style: TextStyle(color: Color(0xffE05E3F)),),
        ),
      ],
    );
  }
}





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
