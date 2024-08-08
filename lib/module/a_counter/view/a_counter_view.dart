import 'package:flutter/material.dart';
import '../controller/a_counter_controller.dart';
import 'package:flutter101/core.dart';

class ACounterView extends StatefulWidget {
  const ACounterView({super.key});

  @override
  _ACounterViewState createState() => _ACounterViewState();
}

class _ACounterViewState extends State<ACounterView> {
  final ACounterController _controller = ACounterController();

  // PENERAPANNYA!
  void _updateUI() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // PENERAPANNYA!
            Text(
              "Counter : ${_controller.counter}",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 10.0,
            ),
            // PENERAPANNYA!
            ElevatedButton(
              onPressed: () {
                _controller.updateCounter(_updateUI);
              },
              child: const Text(
                "Add counter",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
