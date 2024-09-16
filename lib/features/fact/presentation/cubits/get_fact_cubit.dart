import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/features/fact/domain/models/fact.dart';
import 'package:template/features/fact/domain/usecases/get_fact_usecase.dart';

part 'get_fact_state.dart';
part 'get_fact_cubit.freezed.dart';

class GetFactCubit extends Cubit<GetFactState> {
  final GetFactUsecase _getFactUsecase;

  GetFactCubit(this._getFactUsecase) : super(const GetFactState.initial());

  void getFact() async {
    emit(const GetFactState.loading());
    final resource = await _getFactUsecase.invoke(null);
    resource.map(success: (value) {
      emit(GetFactState.success(value.data));
    }, failure: (e) {
      emit(GetFactState.error(e.exception));
    });
  }
}
