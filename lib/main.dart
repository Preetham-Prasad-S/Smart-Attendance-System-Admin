import 'package:flutter/material.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      anonKey:
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhsZ3FzenZuZnJieXVoYXhxbG9mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTA3NDAzNDIsImV4cCI6MjA2NjMxNjM0Mn0.tKampzgf1tmvHmlCkgY2_H_Hfw8BFp1UDAYkvRBHv14",
      url: "https://hlgqszvnfrbyuhaxqlof.supabase.co");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart Attendance System (Admin)",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true)
          .copyWith(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
    );
  }
}
