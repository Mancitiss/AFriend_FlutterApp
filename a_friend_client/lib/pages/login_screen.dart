import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            TextButton(
              onPressed: () {
                // forgot password functionality
              },
              child: const Text('Forgot Password'),
            ),
            ElevatedButton(
              onPressed: () {
                // login functionality
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // signup functionality
              },
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}