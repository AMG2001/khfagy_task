// import 'package:flutter/material.dart';

// void main() {
//   runApp(TasksApp());
// }

// class TasksApp extends StatelessWidget {
//   const TasksApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Form Validation Demo"),
//       ),
//       body: SafeArea(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 validator: (value) {
//                   if (value == null || value == "") {
//                     return 'you can\'t leave this field empty';
//                   }
//                 },
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate()) {}
//                   },
//                   child: Text("Submit"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
