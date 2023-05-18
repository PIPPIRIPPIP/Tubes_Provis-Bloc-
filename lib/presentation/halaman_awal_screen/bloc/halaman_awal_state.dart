// ignore_for_file: must_be_immutable

part of 'halaman_awal_bloc.dart';

class HalamanAwalState extends Equatable {
  HalamanAwalState({this.halamanAwalModelObj});

  HalamanAwalModel? halamanAwalModelObj;

  @override
  List<Object?> get props => [
        halamanAwalModelObj,
      ];
  HalamanAwalState copyWith({HalamanAwalModel? halamanAwalModelObj}) {
    return HalamanAwalState(
      halamanAwalModelObj: halamanAwalModelObj ?? this.halamanAwalModelObj,
    );
  }
}
