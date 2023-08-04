import 'package:flutter/material.dart';
import 'package:client/pages/sign_up.dart';

import '../main.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(98, 159, 97, 90),
              child: const Text(
                'Summer Project',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 28
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: '학교 이메일',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 94, 184, 1),
                          width: 0.5)
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: 21, top: 14, bottom: 14),
                ),
                textInputAction: TextInputAction.next,
                onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 13),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: '비밀번호',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 94, 184, 1),
                          width: 0.5)
                  ),
                  contentPadding: const EdgeInsets.only(
                      left: 21, top: 14, bottom: 14),
                ),
                textInputAction: TextInputAction.next,
                onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              ),
            ),

            Container(
              height: 65,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 14),
              child: ElevatedButton(
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromRGBO(0, 94, 184, 1),
                ),
                child: const Text(
                  'Login',
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  child: const Text(
                    '회원가입',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(117, 113, 113, 1),
                    ),
                  ),
                  onPressed: () {
                    //signup screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                ),


                const Text(
                  '|',
                  style: TextStyle(
                    color: Color.fromRGBO(117, 113, 113, 1),),
                ),


                TextButton(
                  child: const Text(
                    '비밀번호 찾기',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(117, 113, 113, 1),
                    ),
                  ),
                  onPressed: () {
                    //forgot password screen
                  },
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.only(top: 50),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    height: 1.0,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: const Color.fromRGBO(102, 102, 102, 1)
                ),

                const Text(
                  '  간편 로그인  ',
                  style: TextStyle(fontSize: 11,
                      color: Color.fromRGBO(102, 102, 102, 1)),
                ),

                Container(
                  height: 1.0,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: const Color.fromRGBO(102, 102, 102, 1),
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.only(top: 15),
            ),

            InkWell(
              onTap: () {
                print("카카오 로그인 버튼 클릭");
              },
              child: Image.asset("../image/kakao.png",
                height: 50,),
            )
          ],

        ));
  }
}