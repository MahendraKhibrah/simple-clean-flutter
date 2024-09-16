import 'dart:convert';

import 'package:template/common/models/resource_state.dart';
import 'package:template/common/utils/extension/response_ext.dart';
import 'package:template/features/fact/data/fact_api.dart';
import 'package:template/features/fact/data/models/get_fact_response.dart';
import 'package:template/features/fact/domain/models/fact.dart';

import '../domain/fact_repository.dart';

class FactRepositoryImpl implements FactRepository {
  final FactApi remoteDataApi;

  FactRepositoryImpl({required this.remoteDataApi});

  @override
  Future<ResourceState<Fact>> getRandomFact() async {
    try {
      return await remoteDataApi.getRandomFact().mapToEntity<Fact>((response) {
        final factResponse = GetFactResponse.fromJson(json.decode(response));
        return Fact(
            description: factResponse.fact ?? '',
            information: (factResponse.length ?? 0).toString());
      });
    } on Exception catch (e) {
      return ResourceState.failure(e, null, 500);
    } catch (e) {
      return ResourceState.failure(Exception(e.toString()), null, 500);
    }
  }

  @override
  Future<ResourceState<List<Fact>>> getTenRandomFacts() async {
    // TODO : IMPLEMENT THIS
    throw UnimplementedError();
  }
}
