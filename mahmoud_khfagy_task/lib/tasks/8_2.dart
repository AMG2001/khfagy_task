import 'package:flutter/material.dart';

void main() {
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkBoxBool = false;
  bool switchBool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Accessibility test"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text("Switch"),
              trailing: Switch(
                value: switchBool,
                onChanged: (value) {
                  setState(() {
                    switchBool = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Check box"),
              trailing: Checkbox(
                value: checkBoxBool,
                onChanged: (value) {
                  setState(() {
                    checkBoxBool = value!;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
