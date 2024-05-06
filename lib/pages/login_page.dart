import 'package:flutter/material.dart';
import 'package:mr_foodie/components/button.dart';
import 'package:mr_foodie/components/textfield.dart';
import 'package:mr_foodie/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 100,
                color: Colors.black,
              ),
              const SizedBox(height: 25),
              Text(
                "Mr Foodie",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 15),
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 15),
              MyButton(
                text: "Login In",
                onTap: login,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not Registered ?",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register Here",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
