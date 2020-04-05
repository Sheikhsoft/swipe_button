import 'package:flutter/material.dart';
import 'package:swipe_button/swipe_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final swipeController = SwipeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.restore),
            onPressed: () => swipeController.reset(),
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SwipeButton(
            swipeController: swipeController,
            thumb: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                    widthFactor: 0.90,
                    child: Icon(
                      Icons.chevron_right,
                      size: 60.0,
                      color: Colors.white,
                    )),
              ],
            ),
            content: Center(
              child: Text(
                'Testing',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onChanged: (result) {
              print(result);
              if (result == SwipePosition.SwipeRight) {
              } else {}
            },
          ),
        ),
      ),
    );
  }
}
