import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

/// Global service locator instance
final GetIt getIt = GetIt.instance;

/// Configure dependency injection
@InjectableInit()
Future<void> configureDependencies() async => getIt.init();

/// Reset all dependencies (useful for testing)
Future<void> resetDependencies() async {
  await getIt.reset();
}