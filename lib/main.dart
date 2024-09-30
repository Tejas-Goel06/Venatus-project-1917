import 'package:flutter/material.dart';

import 'Clock.dart';

void main() => runApp(MaterialApp(
      routes: {'/': (context) => home(), '/clock': (context) => ClockScreen()},
    ));

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My first app',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 45,
              color: Colors.greenAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/peakpx.jpg'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FloatingActionButton.large(
                      onPressed: () {
                        Navigator.pushNamed(context, '/clock');
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.av_timer,
                        size: 100.0,
                        color: Colors.greenAccent,
                      ),
                    )
                  ]),
            ),
            const Text(
              "Clock",
              style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold),
            ),
            const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Roll No: 2024UCA1917",
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 17.5,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Name: Tejas Goel",
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 17.5,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
