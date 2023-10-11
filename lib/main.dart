import 'package:flutter/material.dart';
import 'package:starter_project/features/home/presentation/screens/home.dart';
import 'injection_dependencies.dart' as di;

void main()async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Project',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
