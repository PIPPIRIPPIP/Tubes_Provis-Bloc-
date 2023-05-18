// ignore_for_file: must_be_immutable

part of 'peminjam_bloc.dart';

class PeminjamState extends Equatable {
  PeminjamState({this.peminjamModelObj});

  PeminjamModel? peminjamModelObj;

  @override
  List<Object?> get props => [
        peminjamModelObj,
      ];
  PeminjamState copyWith({PeminjamModel? peminjamModelObj}) {
    return PeminjamState(
      peminjamModelObj: peminjamModelObj ?? this.peminjamModelObj,
    );
  }
}
