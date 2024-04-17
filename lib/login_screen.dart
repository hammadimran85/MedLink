import 'package:flutter/material.dart';
import 'package:med_link/MainMenuScreen.dart';
import 'register_screen.dart'; // Import the RegisterScreen.dart file
import 'forgetpassword.dart'; // Import the ForgetPasswordScreen.dart file

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, // Follow the system theme
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/images/homepagelogo.png',
                width: 400,
                height: 32,
              ),
              const Text('Welcome Back',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(88, 87, 219, 1))),
              const Text('Log in to your account',
                  style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Email or Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigate to ForgetPasswordScreen when the "Forgot Password?" button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPasswordScreen()),
                      );
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color.fromRGBO(88, 87, 219, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainMenuScreen()));
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(88, 87, 219, 1),
                ),
                child:
                    const Text('Log In', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      // Navigate to the registration screen (RegisterScreen)
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Theme.of(context)
                              .primaryColor, // Use theme primary color
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
