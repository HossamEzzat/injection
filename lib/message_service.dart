// هذا هو "العقد" أو الواجهة
abstract class MessageService {
  String getGreeting();
}

// هذا هو التنفيذ الفعلي للخدمة
class MessageServiceImpl implements MessageService {
  @override
  String getGreeting() => "مرحباً بك في عالم Dependency Injection! 🚀";
}
