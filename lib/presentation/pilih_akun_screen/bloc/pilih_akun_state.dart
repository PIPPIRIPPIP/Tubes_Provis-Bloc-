// ignore_for_file: must_be_immutable

part of 'pilih_akun_bloc.dart';

class PilihAkunState extends Equatable {
  PilihAkunState({this.pilihAkunModelObj});

  PilihAkunModel? pilihAkunModelObj;

  @override
  List<Object?> get props => [
        pilihAkunModelObj,
      ];
  PilihAkunState copyWith({PilihAkunModel? pilihAkunModelObj}) {
    return PilihAkunState(
      pilihAkunModelObj: pilihAkunModelObj ?? this.pilihAkunModelObj,
    );
  }
}
