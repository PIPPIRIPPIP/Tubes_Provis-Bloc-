import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pilih_akun_item_model.dart';
import 'package:ayesha_s_application3/presentation/pilih_akun_screen/models/pilih_akun_model.dart';
part 'pilih_akun_event.dart';
part 'pilih_akun_state.dart';

class PilihAkunBloc extends Bloc<PilihAkunEvent, PilihAkunState> {
  PilihAkunBloc(PilihAkunState initialState) : super(initialState) {
    on<PilihAkunInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PilihAkunInitialEvent event,
    Emitter<PilihAkunState> emit,
  ) async {
    emit(state.copyWith(
        pilihAkunModelObj: state.pilihAkunModelObj
            ?.copyWith(pilihAkunItemList: fillPilihAkunItemList())));
  }

  List<PilihAkunItemModel> fillPilihAkunItemList() {
    return List.generate(2, (index) => PilihAkunItemModel());
  }
}
