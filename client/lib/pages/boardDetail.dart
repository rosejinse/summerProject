import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //resizeToAvoidBottomInset: false,
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
                  title: Text('게시판',
                      style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true, // 글자 가운데 정렬
                  backgroundColor: Colors.white,
                ),
            ),
        body: SingleChildScrollView(
          child: Container(
            height: 720,
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
                    height: 200,
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
                //등록버튼 눌렀을 때 생성되는 ListView!!!
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext ctx, int index){
                      return Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          //dismissible: DismissiblePane(onDismissed: (){}),
                          children: [
                            SlidableAction(
                              onPressed: (context) => {},
                              //icon: Icons.edit,
                              label: '수정',
                              foregroundColor: Colors.black,
                              backgroundColor: Color(0xffefd351),
                            ),
                            SlidableAction(
                              onPressed: (context) => {},
                              label: '삭제',
                              foregroundColor: Colors.black,
                              backgroundColor: Color(0xffe33232),
                              //icon: Icons.delete,
                            )
                          ],
                        ),
                        startActionPane: ActionPane(
                          extentRatio: 0.25,
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) => {},
                              backgroundColor: Color(0xff666666),
                              foregroundColor: Colors.black,
                              label: '신고',)
                          ],
                        ),
                        child: Container(
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('익명${index+1}'),
                                    Padding(padding: EdgeInsets.only(right: 10)),
                                    Text('23.07.05 16:50', style: TextStyle(color: Color(0xffBCBCBC)),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 10)),
                                Text('댓글 등록 누르면 쓴 댓글 받아오기'),
                              ],
                            )
                        ),
                      );
                    },
                    // ... (원하는 ListView 또는 다른 body 컨텐츠를 구현하세요)
                  ),
                ),
                Row(
                  children: [
                    // 댓글 기능
                    Padding(padding: EdgeInsets.only(left: 5)),
                    CommentEdit(),
                    TextButton(
                      child: Text('등록'),
                      onPressed: (){},
                    )
                  ],
                )
              ],
            ),
          ),
        ),

        //  bottomNavigationBar:
        //  //BottomBar(),
        // BottomAppBar(
        //   child: Row(
        //     children: [
        //       // 댓글 기능
        //       Padding(padding: EdgeInsets.only(left: 5)),
        //       CommentEdit(),
        //       TextButton(
        //         child: Text('등록'),
        //         onPressed: (){},
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

// class CommentEdit extends StatefulWidget {
//   @override
//   State createState() => CommentState();
// }
//
// class CommentState extends State<CommentEdit>{
//   String comment ='';
//   final TextEditingController _controller = TextEditingController();
//   final FocusNode _focusNode = FocusNode();
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         _focusNode.unfocus();
//       },
//       child: SizedBox(
//         width: 320,
//         height: 35,
//         child: TextField(
//           focusNode: _focusNode,
//           controller: _controller,
//           maxLines: null,
//           expands: true,
//           keyboardType: TextInputType.multiline,
//           style: TextStyle(fontSize: 12, color: Color(0xff666666),),
//           decoration: InputDecoration(
//             hintText: '댓글',
//             filled: true, fillColor: Color(0xffECECEC),
//             // enabledBorder: OutlineInputBorder(
//             //   borderRadius: BorderRadius.circular(10),
//             //   //borderSide: BorderSide(color: Color(0xff666666), width: 0.1),
//             // )
//           ),
//           onChanged: (String str){
//             setState(() => comment= str);
//           },
//         ),
//       ),
//     );
//   }
// }

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

// class BottomBar extends StatefulWidget{
//   BottomState createState() => BottomState();
// }
//
// class BottomState extends State<BottomBar> {
//   //const BottomState({Key? key}) : super(key: key);
//   final TextEditingController _controller = TextEditingController();
//   final FocusNode _focusNode = FocusNode();
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         _focusNode.unfocus();
//       },
//       child: Scaffold(
//        body: Scaffold(
//          body: Container(
//            child: TextField(
//              focusNode: _focusNode,
//              controller: _controller,
//            ),
//          ),
//          bottomNavigationBar: BottomAppBar(
//            child: Row(
//              children: [
//                // 댓글 기능
//                Padding(padding: EdgeInsets.only(left: 5)),
//                CommentEdit(),
//                TextButton(
//                  child: Text('등록'),
//                  onPressed: (){},
//                )
//              ],
//            ),
//          ),
//        ),
//       ),
//     );
//   }
// }