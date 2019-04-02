library swipe_button;

import 'package:flutter/material.dart';
import 'package:swipe_button/swipe_button.dart';

class SwipeButtonDemo extends StatelessWidget {
  final String pageRoute;
  final String buttonTitle;

  const SwipeButtonDemo({Key key, this.pageRoute, this.buttonTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 50.0,
                left: 40.0,
              ),
              alignment: Alignment.topLeft,
              child: Text("Incident",
                  style: TextStyle(fontSize: 34.0, color: Colors.black87)),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 50.0,
                right: 40.0,
              ),
              alignment: Alignment.topRight,
              child: Icon(
                Icons.print,
                color: Colors.amber,
                size: 50.0,
              ),
            ),
            Container(
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
            ),
            Container(
              margin: EdgeInsets.only(
                top: 250.0,
                left: 50.0,
              ),
              alignment: Alignment.centerLeft,
              child:
                  Text("Tips", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 300.0,
                left: 50.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text("Take 3 photograps for proof",
                  style: TextStyle(color: Colors.grey)),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 350.0,
                left: 50.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text("Obtainthe identy and personal details",
                  style: TextStyle(color: Colors.grey)),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 400.0,
                left: 50.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text("Specify the location",
                  style: TextStyle(color: Colors.grey)),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 450.0,
                left: 50.0,
              ),
              alignment: Alignment.centerLeft,
              child: Text("Note Down The Vechicle number",
                  style: TextStyle(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
