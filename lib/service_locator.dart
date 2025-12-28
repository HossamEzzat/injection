import 'package:get_it/get_it.dart';

import 'message_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  // هنا نقول لـ GetIt: عندما يطلب أي شخص MessageService، أعطه MessageServiceImpl
  getIt.registerLazySingleton<MessageService>(() => MessageServiceImpl());
}
