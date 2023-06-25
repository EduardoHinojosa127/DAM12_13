import 'package:flutter/material.dart';

class InteractivePage extends StatefulWidget {
  const InteractivePage({Key? key}) : super(key: key);

  @override
  _InteractivePageState createState() => _InteractivePageState();
}

class _InteractivePageState extends State<InteractivePage> {
  bool isSwitchOn = false;
  int counter = 0;

  void toggleSwitch(bool value) {
    setState(() {
      isSwitchOn = value;
    });
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Switch: ${isSwitchOn ? 'ON' : 'OFF'}',
              style: TextStyle(fontSize: 24),
            ),
            Switch(
              value: isSwitchOn,
              onChanged: toggleSwitch,
            ),
            const SizedBox(height: 20),
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: incrementCounter,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
