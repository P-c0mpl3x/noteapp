import 'package:flutter/material.dart';

import 'models/note.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: const HW());
  }
}

class HW extends StatefulWidget {
  const HW({super.key});

  @override
  State<HW> createState() => _HWState();
}

class _HWState extends State<HW> {
  List<Note> notes = [
    Note(content: 'Đi học', title: 'Đi'),
    Note(content: 'Đi học', title: 'Không'),
    Note(content: 'Ăn cơm', title: 'Ăn'),
    Note(content: 'Ăn cơm', title: 'Không'),
    Note(content: 'Đi ngủ', title: 'Ngủ'),
    Note(content: 'Đi ngủ', title: 'Không'),
  ];

  void deleteNote(int index) {
    notes.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Container(
        color: Colors.amberAccent,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.7,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                      image: NetworkImage(
                        'https://nads.1cdn.vn/2024/11/22/74da3f39-759b-4f08-8850-4c8f2937e81a-1_mangeshdes.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.separated(
            itemBuilder:
                (context, index) =>
                    buildNote(notes[index].title, notes[index].content, index),
            separatorBuilder: (context, index) => SizedBox(height: 20),
            itemCount: notes.length,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add, color: Colors.purple, weight: 500),
      ),
    );
  }

  Widget buildNote(String title, String content, int index) {
    return Container(
      color: Colors.greenAccent,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            title,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            content,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              deleteNote(index);
            },
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
