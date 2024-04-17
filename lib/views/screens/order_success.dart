import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:med_link/MainMenuScreen.dart';

class OrderSuccessScreen extends StatelessWidget {
  static String routeName = "/order_success";

  const OrderSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/Success.png",
            height: MediaQuery.of(context).size.height * 0.4, //40%
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Adjust the value to change the radius
                ),
                backgroundColor: const Color.fromRGBO(0, 48, 120, 0.9),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainMenuScreen()));
              },
              child: const Text(
                "Back To Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
