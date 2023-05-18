import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayesha_s_application3/presentation/riwayat_transaksi_peminjam_screen/models/riwayat_transaksi_peminjam_model.dart';
part 'riwayat_transaksi_peminjam_event.dart';
part 'riwayat_transaksi_peminjam_state.dart';

class RiwayatTransaksiPeminjamBloc
    extends Bloc<RiwayatTransaksiPeminjamEvent, RiwayatTransaksiPeminjamState> {
  RiwayatTransaksiPeminjamBloc(RiwayatTransaksiPeminjamState initialState)
      : super(initialState) {
    on<RiwayatTransaksiPeminjamInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    RiwayatTransaksiPeminjamInitialEvent event,
    Emitter<RiwayatTransaksiPeminjamState> emit,
  ) async {
    emit(state.copyWith(
        riwayatTransaksiPeminjamModelObj: state.riwayatTransaksiPeminjamModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<RiwayatTransaksiPeminjamState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
