// // هذا هو "العقد" أو الواجهة
// abstract class MessageService {
//   String getGreeting();
// }
//
// // هذا هو التنفيذ الفعلي للخدمة
// class MessageServiceImpl implements MessageService {
//   @override
//   String getGreeting() => "مرحباً بك في عالم Dependency Injection! 🚀";
// }

import 'package:injectable/injectable.dart';

// 1. العقد (Interface)
abstract class MessageService {
  String getGreeting();
}

// 2. التنفيذ الفعلي (Implementation)
// نستخدم @LazySingleton لإنشاء نسخة واحدة فقط عند الطلب
@LazySingleton(as: MessageService)
class MessageServiceImpl implements MessageService {
  @override
  String getGreeting() => "Hello from Injectable & GetIt! 🚀";
}
