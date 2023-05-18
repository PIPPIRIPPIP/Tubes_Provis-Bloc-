import 'package:equatable/equatable.dart';
import 'package:ayesha_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';

// ignore: must_be_immutable
class RiwayatTransaksiPeminjamModel extends Equatable {
  RiwayatTransaksiPeminjamModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  RiwayatTransaksiPeminjamModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return RiwayatTransaksiPeminjamModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
