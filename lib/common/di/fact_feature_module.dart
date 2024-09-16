import 'package:injectable/injectable.dart';
import 'package:template/features/fact/presentation/cubits/get_fact_cubit.dart';

@module
abstract class FactFeatureModule {
  @injectable
  GetFactCubit get getFactCubit;
}
