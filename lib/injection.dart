import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// سيظهر لك خطأ في السطر القادم حتى تقوم بتشغيل الـ build_runner
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();
