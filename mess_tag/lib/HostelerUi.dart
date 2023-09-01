import 'package:flutter/material.dart';

class HostelerUi extends StatefulWidget {
  const HostelerUi({super.key});

  @override
  State<HostelerUi> createState() => _HostelerUiState();
}

class _HostelerUiState extends State<HostelerUi> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: Center(child: Text("Sign in Completed")),
    );
  }
}
