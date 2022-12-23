import 'package:flutter/material.dart';
import 'package:untitled3/main_page.dart';
import 'package:photo_view/photo_view.dart';


class qr_kod extends StatefulWidget {
  const qr_kod({Key? key}) : super(key: key);

  @override
  State<qr_kod> createState() => _qr_kodState();
}


class _qr_kodState extends State<qr_kod> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QR-Код'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        //В кавычках указывается имя файла на котором изображено фото документа
        image: AssetImage("assets/kotik-012b2.jpg"),
        fit: BoxFit.cover,
        ),
      ),
          child:
          PhotoView(
            //В кавычках указывается имя файла на котором изображено фото документа
            imageProvider: AssetImage("assets/kotik-012b2.jpg"),
          )
        ),
      ),
    );
  }
}

