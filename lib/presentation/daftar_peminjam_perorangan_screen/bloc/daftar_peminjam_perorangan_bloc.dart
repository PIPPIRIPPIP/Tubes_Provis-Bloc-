import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayesha_s_application3/presentation/daftar_peminjam_perorangan_screen/models/daftar_peminjam_perorangan_model.dart';
part 'daftar_peminjam_perorangan_event.dart';
part 'daftar_peminjam_perorangan_state.dart';

class DaftarPeminjamPeroranganBloc
    extends Bloc<DaftarPeminjamPeroranganEvent, DaftarPeminjamPeroranganState> {
  DaftarPeminjamPeroranganBloc(DaftarPeminjamPeroranganState initialState)
      : super(initialState) {
    on<DaftarPeminjamPeroranganInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DaftarPeminjamPeroranganInitialEvent event,
    Emitter<DaftarPeminjamPeroranganState> emit,
  ) async {
    emit(state.copyWith(
        fullnameController: TextEditingController(),
        emailoneController: TextEditingController(),
        mobilenoController: TextEditingController(),
        nikexampleController: TextEditingController(),
        provinceoptionsController: TextEditingController(),
        cityoptionsController: TextEditingController(),
        businesstypeoptController: TextEditingController()));
  }
}
