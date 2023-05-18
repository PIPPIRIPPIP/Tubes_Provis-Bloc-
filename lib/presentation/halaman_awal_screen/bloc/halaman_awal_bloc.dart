import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/halamanawal_item_model.dart';
import 'package:ayesha_s_application3/presentation/halaman_awal_screen/models/halaman_awal_model.dart';
part 'halaman_awal_event.dart';
part 'halaman_awal_state.dart';

class HalamanAwalBloc extends Bloc<HalamanAwalEvent, HalamanAwalState> {
  HalamanAwalBloc(HalamanAwalState initialState) : super(initialState) {
    on<HalamanAwalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HalamanAwalInitialEvent event,
    Emitter<HalamanAwalState> emit,
  ) async {
    emit(state.copyWith(
        halamanAwalModelObj: state.halamanAwalModelObj
            ?.copyWith(halamanawalItemList: fillHalamanawalItemList())));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginScreen,
      );
    });
  }

  List<HalamanawalItemModel> fillHalamanawalItemList() {
    return List.generate(2, (index) => HalamanawalItemModel());
  }
}
