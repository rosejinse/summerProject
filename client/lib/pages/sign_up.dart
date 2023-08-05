import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  String _selectedValue = '학과를 선택하세요'; // 학과 선택 dropdown 초기 값
  final List<String> _majorList = <String>[
    '학과를 선택하세요',
    '컴퓨터공학과',
    '수학과',
    '정보통신공학과',
  ]; // 학과 선택 list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery
              .of(context)
              .size
              .height * 0.06),
          child: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            title: const Text( // AppBar title
              '회원가입',
              style: TextStyle(fontSize: 20, color: Colors.black,),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
        ),

        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: DropdownButton( // 학과 선택 dropdown
                    value: _selectedValue,
                    items: _majorList.map<DropdownMenuItem<String>>((
                        String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                    itemHeight: 60,
                    icon: const Icon(Icons.arrow_drop_down_sharp),
                    isExpanded: true, // dropdown 전체 너비
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

// git 계정 테스트 용 주석