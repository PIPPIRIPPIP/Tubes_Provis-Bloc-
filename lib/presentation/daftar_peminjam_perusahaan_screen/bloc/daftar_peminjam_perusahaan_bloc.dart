import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayesha_s_application3/presentation/daftar_peminjam_perusahaan_screen/models/daftar_peminjam_perusahaan_model.dart';
part 'daftar_peminjam_perusahaan_event.dart';
part 'daftar_peminjam_perusahaan_state.dart';

class DaftarPeminjamPerusahaanBloc
    extends Bloc<DaftarPeminjamPerusahaanEvent, DaftarPeminjamPerusahaanState> {
  DaftarPeminjamPerusahaanBloc(DaftarPeminjamPerusahaanState initialState)
      : super(initialState) {
    on<DaftarPeminjamPerusahaanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DaftarPeminjamPerusahaanInitialEvent event,
    Emitter<DaftarPeminjamPerusahaanState> emit,
  ) async {
    emit(state.copyWith(
        fullnameasperidController: TextEditingController(),
        emailoneController: TextEditingController(),
        mobilenoController: TextEditingController(),
        mobilenooneController: TextEditingController(),
        companytypeController: TextEditingController(),
        selectprovinceController: TextEditingController(),
        selectcityController: TextEditingController(),
        selectbusinesstController: TextEditingController()));
  }
}
