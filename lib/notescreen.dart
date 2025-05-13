
import 'package:flutter/material.dart';

import 'models/note.dart';

import 'dart:math';
class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  final List<Note> notes = [
    Note(
      title: 'Kế hoạch cuối tuần',
      content:
          'Cuối tuần này dự định đi dã ngoại cùng nhóm bạn cũ ở ngoại ô thành phố, chuẩn bị đồ ăn nhẹ và mang theo trò chơi.',
    ),
    Note(
      title: 'Thực đơn hôm nay',
      content:
          'Bữa trưa gồm có cơm gà xối mỡ, canh chua cá lóc và một ít rau xào tỏi để bổ sung chất xơ và vitamin.',
    ),
    Note(
      title: 'Việc cần làm',
      content:
          'Hoàn thành báo cáo công việc, gửi email phản hồi cho khách hàng và dọn dẹp không gian làm việc gọn gàng hơn.',
    ),
    Note(
      title: 'Ý tưởng ứng dụng mới',
      content:
          'Phát triển một ứng dụng giúp người dùng học tiếng Anh qua phim bằng cách tạo phụ đề tương tác và câu đố nhỏ.',
    ),
    Note(
      title: 'Kỷ niệm đáng nhớ',
      content:
          'Nhớ lại chuyến đi Đà Lạt năm ngoái với những buổi sáng sương mù và ly cà phê nóng bên người thân yêu.',
    ),
    Note(
      title: 'Mục tiêu tháng này',
      content:
          'Tập thể dục đều đặn ba lần mỗi tuần, đọc xong một cuốn sách kỹ năng mềm và học thêm một kỹ năng mới.',
    ),

    Note(
      title: 'Mục tiêu tháng này',
      content:
          'Tập thể dục đều đặn ba lần mỗi tuần, đọc xong một cuốn sách kỹ năng mềm và học thêm một kỹ năng mới.',
    ),
    Note(
      title: 'Mục tiêu tháng này',
      content:
          'Tập thể dục đều đặn ba lần mỗi tuần, đọc xong một cuốn sách kỹ năng mềm và học thêm một kỹ năng mới.',
    ),
    Note(
      title: 'Mục tiêu tháng này',
      content:
          'Tập thể dục đều đặn ba lần mỗi tuần, đọc xong một cuốn sách kỹ năng mềm và học thêm một kỹ năng mới.',
    ),
        Note(
      title: 'Mục tiêu tháng nào đó',
      content:
          'Đi du lịch đến một nơi mới, khám phá văn hóa và ẩm thực địa phương, và ghi lại những khoảnh khắc đáng nhớ.',
    ),
    Note(
      title: 'Mục tiêu tháng sau',
      content:
          'Ăn bánh kem vào mỗi buổi chiều thứ bảy, đi dạo quanh công viên và tham gia một lớp học nấu ăn.',
    ),
    Note(
      title: 'Mục tiêu tháng trước',
      content:
          'Ngủ tới lúc mặt trời lặn, ăn sáng với món bánh mì kẹp thịt và uống một ly trà sữa.',
    ),
  ];

  void addNote(int index, Note article) {
    notes.insert(index, article);
    setState(() {});
  }

  void removeNote(int index) {
    notes.removeAt(index);
    setState(() {});
  }
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
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => createNote(
                    notes[index].title,
                    notes[index].content,
                    getRandomColor(),
                    index,
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 15),
                  itemCount: notes.length,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          addNote(notes.length, 
          Note(
            title: 'Tiêu đề mới được thêm vào',
            content: 'Nội dung mới được thêm vào',
          ),
          );
        },
        child: Icon(Icons.add_business),
      ),
    );
  }

  Widget createNote(String title, String content, Color color, int index) {
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
              SizedBox(
                width: 320,
                child: Column(
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
              ),
              IconButton(
                onPressed: () {
                  removeNote(index);
                },
                icon: Icon(Icons.delete, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
