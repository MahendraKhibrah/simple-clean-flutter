import 'package:template/common/models/resource_state.dart';
import 'package:template/common/usecases/base_use_case.dart';
import 'package:template/features/fact/domain/fact_repository.dart';
import 'package:template/features/fact/domain/models/fact.dart';

class GetFactUsecase extends BaseUseCase<void, Fact> {
  final FactRepository _repository;

  GetFactUsecase(this._repository);

  @override
  Future<ResourceState<Fact>> invoke(void request) async {
    return await _repository.getRandomFact();
  }
}
