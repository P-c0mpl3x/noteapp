import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 5),
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Notes',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle_sharp,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(width: 40),
                          Icon(Icons.add_circle, size: 50, color: Colors.white),
                          SizedBox(width: 20),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
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
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
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
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
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
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
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
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
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
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
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
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
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
                          borderRadius: BorderRadius.circular(17)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          'Evolving comments: An experiment to encourage engagement and follow-up questions',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

          ),

        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add, color: Colors.purple,weight: 500,),
      ),
    );
  }
}
