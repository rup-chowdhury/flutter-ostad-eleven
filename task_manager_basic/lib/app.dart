import 'package:flutter/material.dart';
import 'package:task_manager_basic/ui/screens/forgot_password_email_verification_screen.dart';
import 'package:task_manager_basic/ui/screens/forgot_password_otp_verification_screen.dart';
import 'package:task_manager_basic/ui/screens/login_screen.dart';
import 'package:task_manager_basic/ui/screens/main_nav_bar_holder_screen.dart';
import 'package:task_manager_basic/ui/screens/reset_password_screen.dart';
import 'package:task_manager_basic/ui/screens/sign_up_screen.dart';
import 'package:task_manager_basic/ui/screens/splash_screen.dart';
import 'package:task_manager_basic/ui/screens/update_profile_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.green,
            fixedSize: Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        )
      ),
      initialRoute: '/',
      routes: {
        SplashScreen.name : (_) => SplashScreen(),
        LoginScreen.name : (_) => LoginScreen(),
        SignUpScreen.name : (_) => SignUpScreen(),
        MainNavBarHolderScreen.name : (_) => MainNavBarHolderScreen(),
        UpdateProfileScreen.name : (_) => UpdateProfileScreen(),
        ForgotPasswordEmailVerificationScreen.name : (_) => ForgotPasswordEmailVerificationScreen(),
        ForgotPasswordOtpVerificationScreen.name : (_) => ForgotPasswordOtpVerificationScreen(),
        ResetPasswordScreen.name : (_) => ResetPasswordScreen(),
      },
    );
  }
}
