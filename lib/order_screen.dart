import 'package:flutter/material.dart';
import 'MainMenuScreen.dart'; // Import your MainMenuScreen file

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Success.png'), // Update the path to the 'Success.png' image if needed
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to the MainMenuScreen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MainMenuScreen()),
              );
            },
            child: const Text('Back to Home'),
          ),
        ],
      ),
    );
  }
}
