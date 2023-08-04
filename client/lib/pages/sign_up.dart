import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({ Key? key }) : super(key: key);

  final Majorlist = ['컴퓨터공학과,', '수학과', '정보통신공학과'];
  var SelectedValue = '학과를 선택하세요';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
          appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.06),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            '회원가입',
            style: TextStyle(fontSize: 20, color: Colors.black,),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('돌아가기'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      ),
    );
  }
}