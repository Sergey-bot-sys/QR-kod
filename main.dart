import 'package:flutter/material.dart';
import 'package:untitled3/main_page.dart';
import 'package:untitled3/qr_kod.dart';
import 'package:untitled3/pasport.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (context) => MyApp(),
    '/qr': (context) => qr_kod(),
    '/pasport': (context) => pasport(),

  },
)
);