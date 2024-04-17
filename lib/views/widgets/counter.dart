import 'package:flutter/material.dart';
import 'dart:async';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  static final GlobalKey<_CounterWidgetState> _counterKey =
      GlobalKey<_CounterWidgetState>();

  static Future<void> getCount(void Function(int) callback) {
    final completer = Completer<void>();

    _getCurrentCount(callback);

    Future.delayed(const Duration(seconds: 1), () {
      completer.complete();
    });

    return completer.future;
  }

  static void _getCurrentCount(void Function(int) callback) {
    final _CounterWidgetState? state = _counterKey.currentState;
    if (state != null) {
      callback(state._counter);
    }
  }

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromRGBO(240, 243, 246, 1)),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(204, 204, 255, 1),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: _decrementCounter,
              iconSize: 15,
            ),
          ),
          SizedBox(
            width: 30,
            child: Center(
              child: Text(
                '$_counter',
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(88, 87, 219, 1),
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: _incrementCounter,
              color: Colors.white,
              iconSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  // Private method to get the current count value
  static void _getCurrentCount(void Function(int) callback) {
    final _CounterWidgetState? state = _counterKey.currentState;
    if (state != null) {
      callback(state._counter);
    }
  }

  static final GlobalKey<_CounterWidgetState> _counterKey =
      GlobalKey<_CounterWidgetState>();
}
