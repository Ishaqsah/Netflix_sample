
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/Di/dependency_injection.config.dart';

final getit = GetIt.instance;
@InjectableInit(preferRelativeImports: false)
Future<void> configueInjection() async {
  getit.init(environment: Environment.prod);
}
