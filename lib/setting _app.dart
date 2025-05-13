import 'package:flutter/material.dart';

class SettingApp extends StatelessWidget {
  const SettingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Setting App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Setting App'),
      ),
    );
  }
}