import 'package:flutter/material.dart';
import 'package:flutter_firebase/screens/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                icon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 16.0),
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
              child: const Text('Register'),

            ),

            const SizedBox(height: 16.0),

            // Sign-Up Link/Button
            TextButton(
              onPressed: () {
                // Navigate to the sign-up screen using MaterialPageRoute
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const SignInScreen()), // Replace SignUpScreen with your actual sign-up screen
                );
              },
              child: const Text('Already have an account? Login'),
            )
          ],
        ),
      ),
    );
  }
}
