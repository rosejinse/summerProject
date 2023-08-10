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
            appBar: AppBar(),
            body: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle),
                      Text('홍길동')
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.account_circle),
                    Text('홍길동')
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.account_circle),
                    Text('홍길동')
                  ],
                )
              ],
            ),
          bottomNavigationBar: BottomBar(),
        )
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.call),
              Icon(Icons.message),
              Icon(Icons.person_search),
            ],
          )

      ),
    );
  }
}



