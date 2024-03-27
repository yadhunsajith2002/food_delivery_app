import 'package:flutter/material.dart';
import 'package:food_delivery/components/custum_button.dart';
import 'package:food_delivery/components/custum_textfields.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Lets Create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextField(
              controller: emailController,
              hinttext: "Email",
              obscuretext: false,
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              controller: passwordController,
              hinttext: "Password",
              obscuretext: true,
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              controller: confirmPasswordController,
              hinttext: "Confirm Password",
              obscuretext: true,
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(ontap: () {}, text: "Sign Up"),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
