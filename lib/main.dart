import 'package:flutter/material.dart';
import 'package:zzz/models/note.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NoteScreen(),
    );
  }
}

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: ListView.builder(
          itemBuilder:
              (context, index) => _buildNote(notes[index].title, Colors.green),
          itemCount: notes.length,
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

  Widget _buildNote(String content, Color color) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              content,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
