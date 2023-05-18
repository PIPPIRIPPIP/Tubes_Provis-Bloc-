import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/riwayat_item_model.dart';
import 'package:ayesha_s_application3/presentation/riwayat_pinjaman_screen/models/riwayat_pinjaman_model.dart';
part 'riwayat_pinjaman_event.dart';
part 'riwayat_pinjaman_state.dart';

class RiwayatPinjamanBloc
    extends Bloc<RiwayatPinjamanEvent, RiwayatPinjamanState> {
  RiwayatPinjamanBloc(RiwayatPinjamanState initialState) : super(initialState) {
    on<RiwayatPinjamanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RiwayatPinjamanInitialEvent event,
    Emitter<RiwayatPinjamanState> emit,
  ) async {
    emit(state.copyWith(
        riwayatPinjamanModelObj: state.riwayatPinjamanModelObj?.copyWith(
      riwayatItemList: fillRiwayatItemList(),
    )));
  }

  List<RiwayatItemModel> fillRiwayatItemList() {
    return List.generate(3, (index) => RiwayatItemModel());
  }
}
