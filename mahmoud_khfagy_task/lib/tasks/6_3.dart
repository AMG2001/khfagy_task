import 'package:flutter/material.dart';

void main() {
  runApp(FloatingActionBtn());
}

class FloatingActionBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floating Action Button ...'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Container(
                  child: Text(
                    'Press the button with a label below!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: FloatingActionButton.extended(
                  backgroundColor: Color(0xFFE91E63),
                  onPressed: () {},
                  label: Text('Approve'),
                  icon: Icon(Icons.thumb_up),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
