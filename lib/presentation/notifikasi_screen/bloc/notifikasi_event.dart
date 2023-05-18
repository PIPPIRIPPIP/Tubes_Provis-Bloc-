// ignore_for_file: must_be_immutable

part of 'notifikasi_bloc.dart';

@immutable
abstract class NotifikasiEvent extends Equatable {}

class NotifikasiInitialEvent extends NotifikasiEvent {
  @override
  List<Object?> get props => [];
}
