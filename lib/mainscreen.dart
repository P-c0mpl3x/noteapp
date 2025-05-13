
import 'package:flutter/material.dart';
import 'package:zzz/notescreen.dart';
 class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang chủ'),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Container(
          color: Colors.blueGrey,
          child: IconButton(
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder:(context) => const NoteScreen())
              );
            },
            icon: Icon(Icons.add, size: 50, color: Colors.redAccent),
          ),
        ),
      ))
    );
  }
}
