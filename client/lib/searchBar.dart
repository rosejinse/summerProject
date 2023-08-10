import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// 수정 및 삭제 버튼 색상 변경하기

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showSearchBar = false; // 초기화면에선 검색바 없음

  void _toggleSearchBar() {
    setState(() {
      _showSearchBar = !_showSearchBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('공지사항', style: TextStyle(fontSize: 17, color: Color(0xff005EB8))),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black,),
            onPressed: _toggleSearchBar,
          ),
        ],
      ),
      body: Column(
        children: [
          if (_showSearchBar)
            SearchBar(
              onClose: _toggleSearchBar,
              // onClose는 닫기 버튼이 눌렸을 때 호출되는 콜백 함수
              // 검색바가 닫히도록 함
            ),
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
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: 20,
              itemBuilder: (BuildContext ctx, int index){
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    dismissible: DismissiblePane(onDismissed: (){}),
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
                  ),
                );
              },
              // ... (원하는 ListView 또는 다른 body 컨텐츠를 구현하세요)
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
                  icon: ImageIcon(AssetImage('assets/notification.png')),
                  onPressed: () {},
                ),
                IconButton(
                  icon: ImageIcon(AssetImage('assets/setting.png')),
                  onPressed: () {},
                ),
              ],
            )),
        // 하단 네비게이션 바 추가
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  final VoidCallback onClose;

  SearchBar({required this.onClose});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  String searchText = "";

  // 검색바 띄울 때 초기화하는 작업 및 바로 검색 가능하도록 focus 처리
  @override
  void initState() {
    super.initState();
    filter.addListener(() {
      setState(() {
        searchText = filter.text;
      });
    });
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.cancel,
                  ),
                  onPressed: (){
                    filter.clear();
                    searchText = "";
                    widget.onClose(); // SearchBar를 닫을 때 콜백 함수 호출
                  },
                ),
                hintText: '검색',
                labelStyle: TextStyle(color: Color(0xff666666)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
