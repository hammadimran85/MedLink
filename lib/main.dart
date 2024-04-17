import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med_link/SplashScreen1.dart';
import 'package:med_link/login_screen.dart';
import 'package:med_link/register_screen.dart';
import 'package:med_link/checkout_screen.dart';
import 'package:med_link/profiles_screen.dart';
import 'package:med_link/theme.dart';
import 'package:med_link/views/screens/order_success.dart'; // Import ProfilesScreen from profiles_screen.dart

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      theme: medLinkLight,
      darkTheme: medLinkDark,
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen1(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/checkout': (context) => const CheckoutScreen(),
        '/profile': (context) => const ProfilesScreen(),
        '/order_success': (context) => const OrderSuccessScreen(),
      },
    );
  }
}
