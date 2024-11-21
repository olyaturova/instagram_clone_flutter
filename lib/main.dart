import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/app_theme_data.dart';
import 'package:instagram_clone_flutter/screens/auth_screens/login_screen/screen.dart';
import 'package:instagram_clone_flutter/screens/auth_screens/signup_screen/screen.dart';

void main() {
  runApp(const InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Instagram Clone",
        theme: AppThemeData().light(),
        darkTheme: AppThemeData().dark(),
        themeMode: ThemeMode.light,
      routes: {
          '/login' : (context) => const LoginScreen(),
          '/signup' : (context) => const SignupScreen()
      },
      home: const LoginScreen(),

        );
  }
}



