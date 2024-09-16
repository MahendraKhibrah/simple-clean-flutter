import 'package:template/common/models/resource_state.dart';

import 'models/fact.dart';

abstract class FactRepository {
  Future<ResourceState<Fact>> getRandomFact();
  Future<ResourceState<List<Fact>>> getTenRandomFacts();
}
