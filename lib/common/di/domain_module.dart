import 'package:injectable/injectable.dart';
import 'package:template/features/fact/data/fact_repository_impl.dart';
import 'package:template/features/fact/domain/fact_repository.dart';
import 'package:template/features/fact/domain/usecases/get_fact_usecase.dart';

@module
abstract class DomainModule {
  @LazySingleton(as: FactRepository)
  FactRepositoryImpl get factRepository;

  @lazySingleton
  GetFactUsecase get getFactUsecase;
}
