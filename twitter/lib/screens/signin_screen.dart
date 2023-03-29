import 'package:flutter/material.dart';
import 'custom_entry_field.dart';
import 'custom_flat_button.dart';
import 'signup_screen.dart'; // Import the SignUp widget

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(
                'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
                height: 200,
              ),
              const SizedBox(height: 50),
              CustomEntryField(
                hint: 'Email',
                controller: _emailController,
              ),
              CustomEntryField(
                hint: 'Password',
                controller: _passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 20),
              CustomFlatButton(
                label: 'Sign In',
                onPressed: () {
                  // Leave the onPressed function empty for now
                },
              ),
              const SizedBox(height: 10),
              CustomFlatButton(
                label: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}