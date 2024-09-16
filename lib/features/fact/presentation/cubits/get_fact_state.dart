part of 'get_fact_cubit.dart';

@freezed
class GetFactState with _$GetFactState {
  const factory GetFactState.initial() = _Initial;
  const factory GetFactState.loading() = _Loading;
  const factory GetFactState.success(Fact fact) = _Success;
  const factory GetFactState.error(Exception exception) = _Error;
}
