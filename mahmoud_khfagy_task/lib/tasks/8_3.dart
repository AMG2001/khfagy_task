import 'package:flutter/material.dart';

void main() {
  runApp(ListTileGuide());
}

class ListTileGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListTile guide'),
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/horse.jpg'),
                    radius: 30),
                title: Text(
                  'Horse',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF66ABC5),
                  ),
                ),
                subtitle: Text(
                  'A strong animal',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF66ABC5),
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/Cow.jpg'), radius: 30),
                title: Text(
                  'Cow',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                subtitle: Text(
                  'Provider of milk',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFA6A6A6),
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/Camal.jpg'),
                    radius: 30),
                title: Text(
                  'Camel',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFA6A6A6),
                  ),
                ),
                subtitle: Text(
                  'Comes with humps',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFA6A6A6),
                  ),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Divider(
              endIndent: 2,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
