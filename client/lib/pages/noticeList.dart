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
                  backgroundColor: Colors.white,
                  title: Text('공지사항',
                          style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
                  centerTitle: true,
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.black,),
                      onPressed: (){
                        // 앱바에 검색창이 뜨면 좋겠음
                      },
                    ),

            ]

                ),
              ],
            )),
        body:
        // body: ListView(
        //   children: [
        //     Container(
        //       margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        //       padding: EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //         border: Border(
        //           top: BorderSide(
        //             width: 1,
        //             color: Color(0xff005EB8),
        //           ),
        //           bottom: BorderSide(
        //             width: 1,
        //             color: Color(0xff005EB8),
        //           ),
        //         ),
        //       ),
        //       child: Row(
        //         children: [
        //           Container(
        //             width: 50,
        //             child:Text('번호',
        //                 style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
        //           ),
        //          // Padding(padding: EdgeInsets.only(right: 10)),
        //           Container(
        //             width: 150,
        //             child:Text('제목',
        //                 style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
        //           ),
        //           Padding(padding: EdgeInsets.only(right: 20)),
        //           Container(
        //             width: 60,
        //             child:Text('조회수',
        //                 style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
        //           ),
        //           Padding(padding: EdgeInsets.only(right: 7)),
        //           Container(
        //             width: 60,
        //             child:Text('등록일',
        //                 style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.only(right: 10, left: 10),
        //       padding: EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //           border: Border(
        //               bottom: BorderSide(
        //                 color: Color(0xff666666),
        //                 width: 0.5,
        //               )
        //           )
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           Padding(padding: EdgeInsets.only(right: 5)),
        //           Container(
        //             child:Text('1',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //           Padding(padding: EdgeInsets.only(right: 10)),
        //           Container(
        //             width: 150,
        //             child: Text('2023학년도 1학기 성적 안내',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //           Container(
        //             width: 60,
        //             child: Text('122',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //           Container(
        //             width: 60,
        //             child: Text('23-06-27',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //
        //         ],
        //       ),
        //     )
        //   ],
        // ),

        Column(
          children: [
            // 정렬버튼 -> 조회순, 등록일 순
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: Color(0xff005EB8),
                  ),
                  bottom: BorderSide(
                    width: 1,
                    color: Color(0xff005EB8),
                  ),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    child:Text('번호',
                        style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
                  ),
                  // Padding(padding: EdgeInsets.only(right: 10)),
                  Container(
                    width: 150,
                    child:Text('제목',
                        style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
                  ),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Container(
                    width: 60,
                    child:Text('조회수',
                        style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
                  ),
                  Padding(padding: EdgeInsets.only(right: 7)),
                  Container(
                    width: 60,
                    child:Text('등록일',
                        style: TextStyle(fontSize: 17), textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            Expanded(child:
            ListView.builder(
              reverse: true,
              itemCount: 20,
              itemBuilder: (BuildContext ctx, int index){
                return Container(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(padding: EdgeInsets.only(right: 5)),
                      Container(
                        child:Text('${index+1}',
                            style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Container(
                        width: 150,
                        child: Text('2023학년도 1학기 성적 안내',
                            style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
                      ),
                      Container(
                        width: 60,
                        child: Text('122',
                            style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
                      ),
                      Container(
                        width: 60,
                        child: Text('23-06-27',
                            style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                );
              },
            ),
            ),
          ],
        ),


        //     Container(
        //       margin: EdgeInsets.only(right: 10, left: 10),
        //       padding: EdgeInsets.all(10),
        //       decoration: BoxDecoration(
        //           border: Border(
        //               bottom: BorderSide(
        //                 color: Color(0xff666666),
        //                 width: 0.5,
        //               )
        //           )
        //       ),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           Padding(padding: EdgeInsets.only(right: 5)),
        //           Container(
        //             child:Text('1',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //           Padding(padding: EdgeInsets.only(right: 10)),
        //           Container(
        //             width: 150,
        //             child: Text('2023학년도 1학기 성적 안내',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //           Container(
        //             width: 60,
        //             child: Text('122',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //           Container(
        //             width: 60,
        //             child: Text('23-06-27',
        //                 style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
        //           ),
        //
        //         ],
        //       ),
        //     )
        //   ],
        // ),

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

class SearchBar extends StatefulWidget {
  SearchState createState() => SearchState();
}

class SearchState extends State<SearchBar>{
  final TextEditingController filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  String searchText = "";

  SearchState(){
    filter.addListener(() {
      setState(() {
        searchText = filter.text;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 6,
                    child: TextField(
                      focusNode: focusNode,
                      style: TextStyle(fontSize: 15,),
                    autofocus: true,
                    controller: filter,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffixIcon: focusNode.hasFocus ? IconButton(
                        icon: Icon(
                          Icons.cancel,
                        ),
                        onPressed: (){
                          setState(() {
                            filter.clear();
                            searchText = "";
                          });
                        },
                      )
                          : Container(),
                      hintText: '검섹',
                      labelStyle: TextStyle(color: Color(0xff666666)),
                    ),),
                )
              ],
            ),
          )
        ],
      ),);
  }
}
