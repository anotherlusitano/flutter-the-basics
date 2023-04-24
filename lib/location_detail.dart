import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: const Text("One"),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: const Text("Two"),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Text("Three"),
          ),
        ],
      ),
    );
  }
}
