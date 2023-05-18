import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayesha_s_application3/presentation/notifikasi_screen/models/notifikasi_model.dart';
part 'notifikasi_event.dart';
part 'notifikasi_state.dart';

class NotifikasiBloc extends Bloc<NotifikasiEvent, NotifikasiState> {
  NotifikasiBloc(NotifikasiState initialState) : super(initialState) {
    on<NotifikasiInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotifikasiInitialEvent event,
    Emitter<NotifikasiState> emit,
  ) async {}
}
