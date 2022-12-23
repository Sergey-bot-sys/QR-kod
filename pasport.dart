import 'package:flutter/material.dart';
import 'package:untitled3/main_page.dart';
import 'package:untitled3/qr_kod.dart';
import 'package:photo_view/photo_view.dart';


class pasport extends StatefulWidget {
  const pasport({Key? key}) : super(key: key);

  @override
  State<pasport> createState() => _pasportState();
}


class _pasportState extends State<pasport> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Паспорт'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                //В кавычках указывается имя файла на котором изображено фото документа
                image: AssetImage("assets/1564314090_3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child:
            PhotoView(
              //В кавычках указывается имя файла на котором изображено фото документа
              imageProvider: AssetImage("assets/1564314090_3.jpg"),
            )
        ),
      ),
    );
  }
}

