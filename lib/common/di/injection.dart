import 'package:injectable/injectable.dart';
import 'package:template/common/di/get_it.dart';
import 'package:template/common/di/injection.config.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void getDependencies() {
  getIt.init();
}
