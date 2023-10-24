import 'package:flutter/material.dart';

// Nav bar tutorial: https://www.youtube.com/watch?v=1wIflvMJYRw

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  late String welcomeEmail = widget.email;

  List<Widget> screens = [
    Container(
      child: Text("This is the home page of this app."),
    ),
    Container(
      child: Text("You can view your messages here!"),
    ),
    Container(
      child: Text("Plug in your earbuds and listen to music!"),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message_sharp), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.earbuds), label: "Music"),
      ]),
      // body: Center(
      //   child: Text('Welcome ${widget.email}!!'),
      // ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Text('Welcome ${widget.email}!!'),
            const SizedBox(
              height: 30.0,
            ),
            screens.elementAt(currentIndex),
          ],
        ),
      ),
    );
  }
}