import 'package:flutter/material.dart';

import 'message_service.dart';
import 'service_locator.dart';

void main() {
  // 1. تشغيل المحقن قبل تشغيل التطبيق
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  // 2. استدعاء الخدمة من المحقن مباشرة
  final messageService = getIt<MessageService>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DI Example")),
      body: Center(
        child: Text(
          messageService.getGreeting(), // استخدام الخدمة
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
