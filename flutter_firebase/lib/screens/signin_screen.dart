import 'package:flutter/material.dart';

import 'signup_screen.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Flexcess Vpn"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email Input Field
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),

            // Password Input Field
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 32.0),

            // Sign-In Button
            ElevatedButton(
              onPressed: () {
                // Implement sign-in logic here
                // Example: signIn(_emailController.text, _passwordController.text);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
              child: const Text('Login'),
            ),

            const SizedBox(height: 16.0),

            // Sign-Up Link/Button
            TextButton(
              onPressed: () {
                // Navigate to the sign-up screen using MaterialPageRoute
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const SignUpScreen()), // Replace SignUpScreen with your actual sign-up screen
                );
              },
              child: const Text('Don\'t have an account? Register'),
            ),
          ],
        ),
      ),
    );
  }
}
