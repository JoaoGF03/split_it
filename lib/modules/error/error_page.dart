import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Error Page"),
        ),
        body: const Center(
          child: Text("Error initializing Firebase"),
        ),
      ),
    );
  }
}
