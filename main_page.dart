import 'package:flutter/material.dart';
import 'package:untitled3/pasport.dart';
import 'package:untitled3/qr_kod.dart';
import 'package:photo_view/photo_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR-код',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Менеджер документов'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
            OutlinedButton.icon(label: Text('QR-Код',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
                onPressed: () {
                  Navigator.push(context, ScaleRoute(page: qr_kod()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                icon: Icon(Icons.account_circle_outlined, size: 60, color: Colors.white,))
                ],
            ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton.icon(label: Text('Паспорт',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                        onPressed: () {
                          Navigator.push(context, ScaleRoute(page: pasport()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                        ),
                        icon: Icon(Icons.assignment_ind_outlined, size: 60, color: Colors.white,))
                  ],
                ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        label: const Text('add'),
        icon: const Icon(Icons.add_box_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  ScaleRoute({required this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        ScaleTransition(
          scale: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn,
            ),
          ),
          child: child,
        ),
  );
}