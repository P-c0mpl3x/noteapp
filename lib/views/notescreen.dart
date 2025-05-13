import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zzz/controllers/note_controller.dart';

import '../models/note.dart';

import 'dart:math';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  final _searchController = TextEditingController();


  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _titleController.dispose();
    _contentController.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final noteController = context.read<NoteController>();
    return Scaffold(
      appBar: AppBar(),
      drawer: Container(
        color: Colors.tealAccent,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Container(
                      width: 150,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/test_photo.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('Tôi tên là: Phúc', style: TextStyle(fontSize: 17)),
                    SizedBox(height: 3),
                    Text('Tôi là: sinh viên'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {},

              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.add_business, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Cửa hàng'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                children: [
                  Icon(Icons.mark_chat_read, color: Colors.black),
                  SizedBox(width: 10),
                  Text('Giỏ hàng'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Row(
                children: [
                  Icon(Icons.event_busy_rounded, color: Colors.black),
                  SizedBox(width: 10),
                  Text('Thoát'),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Consumer<NoteController>(
            builder: (context, noteController, child) {
              return noteController.notes.isEmpty?Center(child: Text('Khoong co duw lieu'),): Column(
                children: [
                  TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      
              noteController.    searchNote(value);
                    },
                    decoration: InputDecoration(
                      hintText: 'Tìm kiếm ghi chú',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder:
                          (context, index) => createNote(
                        title: noteController.notes[index].title,
                        content: noteController.notes[index].content,
                        color: getRandomColor(),
                        index: index,
                        onDelete: () {
                          noteController.deleteNote(index);
                        },
                        onEdit: () {
                          _titleController.text = noteController.notes[index].title;
                          _contentController.text = noteController.notes[index].content;
                          showAddNoteOrEditNoteDialog(context, index: index);
                        },
                          ),
                      separatorBuilder:
                          (context, index) => SizedBox(height: 15),
                      itemCount: noteController.notes.length,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         showAddNoteOrEditNoteDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget createNote({
    required String title,
    required String content,
    required Color color,
    required int index,
    required VoidCallback onDelete,
    required VoidCallback onEdit,
  }) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The title is: $title',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'The content is: $content',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  onDelete.call();
                },
                icon: Icon(Icons.delete, color: Colors.black),
              ),

               IconButton(
                onPressed: () {
                  onEdit.call();
                },
                icon: Icon(Icons.edit, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showAddNoteOrEditNoteDialog(BuildContext context, {int? index}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(index == null? 'Thêm ghi chú':'Sửa ghi chú'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(hintText: 'Tiêu đề'),
              ),
              TextField(
                controller: _contentController,
                decoration: InputDecoration(hintText: 'Nội dung'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final note = Note(
                  title: _titleController.text,
                  content: _contentController.text,
                );
                if(index == null){

                context.read<NoteController>().addNote(note);
                }else{
                  context.read<NoteController>().editNote(index, note);
                }
                Navigator.pop(context);
              },
              child: Text('Lưu'),
            ),
          ],
        );
      },
    );
  }
}
