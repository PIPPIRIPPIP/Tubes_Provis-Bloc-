import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayesha_s_application3/presentation/peminjam_screen/models/peminjam_model.dart';
part 'peminjam_event.dart';
part 'peminjam_state.dart';

class PeminjamBloc extends Bloc<PeminjamEvent, PeminjamState> {
  PeminjamBloc(PeminjamState initialState) : super(initialState) {
    on<PeminjamInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PeminjamInitialEvent event,
    Emitter<PeminjamState> emit,
  ) async {}
}
