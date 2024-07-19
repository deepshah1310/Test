import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Counter();
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // variable:
  int _counter = 0;

  // function to increment the number:
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // function to reset the counter
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  // function to decrement the counter

  void _decrementCounter () {
    setState(() {
      _counter -- ;
    });
    if (_counter < 0) {
      _counter = 0 ;
    }
  }
  // UI (User Interface):
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text(
            'Demo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed it this many times:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 5), // Add space between text and counter
              Text(
                _counter.toString(),
                style: const TextStyle(fontSize: 40), // Make the counter bold
              ),
              const SizedBox(height: 10), // Add space between counter and buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _resetCounter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Set the button color to red
                    ),
                    child: const Text(
                      'Reset',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the button color to blue
                    ),
                    child: const Text(
                      'Press!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: _decrementCounter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Set the button color to red
                    ),
                    child: const Text(
                      'Decrement',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}