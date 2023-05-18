import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayesha_s_application3/presentation/daftar_investor_screen/models/daftar_investor_model.dart';
part 'daftar_investor_event.dart';
part 'daftar_investor_state.dart';

class DaftarInvestorBloc
    extends Bloc<DaftarInvestorEvent, DaftarInvestorState> {
  DaftarInvestorBloc(DaftarInvestorState initialState) : super(initialState) {
    on<DaftarInvestorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DaftarInvestorInitialEvent event,
    Emitter<DaftarInvestorState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        phonenumberController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
