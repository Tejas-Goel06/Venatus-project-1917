import 'package:flutter/material.dart';

import 'Time.dart';

class ClockScreen extends StatefulWidget {
  const ClockScreen({super.key});

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  String Time = 'Fetching...';

  void startingtime() async {
    String time = await getTime();
    setState(() {
      Time = time;
    });
  }

  @override
  void initState() {
    super.initState();
    startingtime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Clock App',
            style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.greenAccent),
          ),
          centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Instant Time-',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),
          Text(
            Time.substring(11, 19),
            style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),
          Text(
            'Current Date-',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          ),
          Text(
            Time.substring(0, 9),
            style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
