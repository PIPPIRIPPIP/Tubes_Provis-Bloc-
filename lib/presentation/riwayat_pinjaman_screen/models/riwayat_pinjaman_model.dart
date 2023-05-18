import 'package:equatable/equatable.dart';
import 'riwayat_item_model.dart';

// ignore: must_be_immutable
class RiwayatPinjamanModel extends Equatable {
  RiwayatPinjamanModel({this.riwayatItemList = const []});

  List<RiwayatItemModel> riwayatItemList;

  RiwayatPinjamanModel copyWith({List<RiwayatItemModel>? riwayatItemList}) {
    return RiwayatPinjamanModel(
      riwayatItemList: riwayatItemList ?? this.riwayatItemList,
    );
  }

  @override
  List<Object?> get props => [riwayatItemList];
}
