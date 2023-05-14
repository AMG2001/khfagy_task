import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body:
          // width: Get.width,
          // height: Get.height,
          SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    width: 60,
                    image: AssetImage(
                      "assets/flutter.png",
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Flutter",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.grey.withOpacity(0.7),
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              /**
               * Text field (Email)
               */
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your Email";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: const TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13)),
                  ),
                ),
              ),

              /**
               * text field (password)
               */
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 16, right: 8, left: 8),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: const TextStyle(fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13)),
                  ),
                ),
              ),

              /**
                 * Forget Password
                 */
              const Text(
                "Forget Password",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),

              /**
                 * Button (Login)
                 */
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 210,
              ),

              /**
                 * New User? Create Account
                 */
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "New User? Create Account",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
