# swipe_button package for Flutter

[![pub package](https://img.shields.io/pub/v/swipe_button.svg)](https://pub.dartlang.org/packages/swipe_button)

A Flutter package for iOS and Android for picking location and images.
## Demo
<img src="http://sheikhsoft.com/screensort/swipe_button.png" width="340" height="640" title="Screen Shoot">


## Installation

First, add `swipe_button` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

### iOS

No configuration required - the plugin should work out of the box.


### Android

No configuration required - the plugin should work out of the box.

### Code for the swipe_button widget

``` dart
import 'package:swipe_button/swipe_button.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 
  @override
  Widget build(BuildContext context) {
    return Container(
                         alignment: Alignment.center,
                         child: Padding(
                           padding: const EdgeInsets.all(24.0),
                           child: SwipeButton(
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
                                 buttonTitle,
                                 style: TextStyle(color: Colors.white),
                               ),
                             ),
                             onChanged: (result) {
                               if (result == SwipePosition.SwipeRight) {
                                 Navigator.pushNamed(context, pageRoute);
                               } else {}
                             },
                           ),
                         ),
                       );
  }
  
}
```

### Code for the Full page swipe_button widget

``` dart
import 'package:swipe_button/swipe_button_demo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwipeHomeWidget(
        pageRought: "/second",
      ),
    );
  }
}
```