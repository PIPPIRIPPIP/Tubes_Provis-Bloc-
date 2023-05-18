// ignore_for_file: must_be_immutable

part of 'notifikasi_bloc.dart';

class NotifikasiState extends Equatable {
  NotifikasiState({this.notifikasiModelObj});

  NotifikasiModel? notifikasiModelObj;

  @override
  List<Object?> get props => [
        notifikasiModelObj,
      ];
  NotifikasiState copyWith({NotifikasiModel? notifikasiModelObj}) {
    return NotifikasiState(
      notifikasiModelObj: notifikasiModelObj ?? this.notifikasiModelObj,
    );
  }
}
