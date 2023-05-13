import 'package:flutter/material.dart';

void main() {
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int activeIndex = 0;

  Color bgActiveColor = Colors.red;

  List<Widget> pagesOfBottomNavBar = [
    HomeScreen(),
    BusniessScreen(),
    School(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("BottomNavigationBar"),
      ),
      body: pagesOfBottomNavBar.elementAt(activeIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        backgroundColor: bgActiveColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(
            letterSpacing: 1,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.orange),
        onTap: (value) {
          setState(
            () {
              activeIndex = value;
              if (activeIndex == 0) {
                bgActiveColor = Color(0xFFE42C2C);
              } else if (activeIndex == 1) {
                bgActiveColor = Colors.green;
              } else if (activeIndex == 2) {
                bgActiveColor = Colors.purple;
              } else if (activeIndex == 3) {
                bgActiveColor = Colors.pink;
              }
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.home,
                color: Colors.orange,
              )),
          BottomNavigationBarItem(
            label: "Busniess",
            icon: Icon(
              Icons.business,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.business,
              color: Colors.orange,
            ),
          ),
          BottomNavigationBarItem(
            label: "School",
            icon: Icon(
              Icons.school,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.school,
              color: Colors.orange,
            ),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            activeIcon: Icon(
              Icons.settings,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "0 -> Home",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}

class BusniessScreen extends StatelessWidget {
  const BusniessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "1 -> Busniess",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}

class School extends StatelessWidget {
  const School({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "2 -> School",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "3 -> Settings",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
