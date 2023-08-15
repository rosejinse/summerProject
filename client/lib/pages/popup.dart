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
