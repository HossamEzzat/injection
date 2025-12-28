import 'package:flutter/material.dart';

import 'injection.dart';
import 'message_service.dart';

void main() {
  // تأكد من تهيئة التبعيات قبل تشغيل التطبيق
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DI with Injectable',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // جلب الخدمة من getIt
    final messageService = getIt<MessageService>();

    return Scaffold(
      appBar: AppBar(title: const Text("DI Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.bolt, size: 100, color: Colors.amber),
            const SizedBox(height: 20),
            Text(
              messageService.getGreeting(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
