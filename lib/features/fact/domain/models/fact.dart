import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class Fact with _$Fact {
  const factory Fact(
      {required String description, required String information}) = _Fact;
}
