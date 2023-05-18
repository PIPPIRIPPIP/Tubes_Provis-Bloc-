import 'package:equatable/equatable.dart';
import 'halamanawal_item_model.dart';

// ignore: must_be_immutable
class HalamanAwalModel extends Equatable {
  HalamanAwalModel({this.halamanawalItemList = const []});

  List<HalamanawalItemModel> halamanawalItemList;

  HalamanAwalModel copyWith({List<HalamanawalItemModel>? halamanawalItemList}) {
    return HalamanAwalModel(
      halamanawalItemList: halamanawalItemList ?? this.halamanawalItemList,
    );
  }

  @override
  List<Object?> get props => [halamanawalItemList];
}
