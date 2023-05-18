// ignore_for_file: must_be_immutable

part of 'riwayat_pinjaman_bloc.dart';

class RiwayatPinjamanState extends Equatable {
  RiwayatPinjamanState({this.riwayatPinjamanModelObj});

  RiwayatPinjamanModel? riwayatPinjamanModelObj;

  @override
  List<Object?> get props => [
        riwayatPinjamanModelObj,
      ];
  RiwayatPinjamanState copyWith(
      {RiwayatPinjamanModel? riwayatPinjamanModelObj}) {
    return RiwayatPinjamanState(
      riwayatPinjamanModelObj:
          riwayatPinjamanModelObj ?? this.riwayatPinjamanModelObj,
    );
  }
}
