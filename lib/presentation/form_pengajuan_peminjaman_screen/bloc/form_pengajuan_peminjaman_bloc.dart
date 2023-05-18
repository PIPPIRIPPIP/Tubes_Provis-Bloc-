import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayesha_s_application3/presentation/form_pengajuan_peminjaman_screen/models/form_pengajuan_peminjaman_model.dart';
part 'form_pengajuan_peminjaman_event.dart';
part 'form_pengajuan_peminjaman_state.dart';

class FormPengajuanPeminjamanBloc
    extends Bloc<FormPengajuanPeminjamanEvent, FormPengajuanPeminjamanState> {
  FormPengajuanPeminjamanBloc(FormPengajuanPeminjamanState initialState)
      : super(initialState) {
    on<FormPengajuanPeminjamanInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FormPengajuanPeminjamanInitialEvent event,
    Emitter<FormPengajuanPeminjamanState> emit,
  ) async {
    emit(state.copyWith(
      newbranchController: TextEditingController(),
      bulancounterController: TextEditingController(),
      repaymentfrequeController: TextEditingController(),
    ));
  }
}
