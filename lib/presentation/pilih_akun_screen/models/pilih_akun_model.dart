import 'package:equatable/equatable.dart';
import 'pilih_akun_item_model.dart';

// ignore: must_be_immutable
class PilihAkunModel extends Equatable {
  PilihAkunModel({this.pilihAkunItemList = const []});

  List<PilihAkunItemModel> pilihAkunItemList;

  PilihAkunModel copyWith({List<PilihAkunItemModel>? pilihAkunItemList}) {
    return PilihAkunModel(
      pilihAkunItemList: pilihAkunItemList ?? this.pilihAkunItemList,
    );
  }

  @override
  List<Object?> get props => [pilihAkunItemList];
}
