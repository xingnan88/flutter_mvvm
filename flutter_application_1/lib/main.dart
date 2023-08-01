import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_view_model.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserViewModel()),
      ],
      child: const MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}
