import 'package:flutter/material.dart';
import 'package:mr_foodie/components/button.dart';
import 'package:mr_foodie/components/textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Center(
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
                  "Create account",
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
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                MyButton(
                  text: "Sign Up",
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        "Login Now",
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
      ),
    );
  }
}
