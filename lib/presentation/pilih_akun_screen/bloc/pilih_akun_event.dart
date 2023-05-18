// ignore_for_file: must_be_immutable

part of 'pilih_akun_bloc.dart';

@immutable
abstract class PilihAkunEvent extends Equatable {}

class PilihAkunInitialEvent extends PilihAkunEvent {
  @override
  List<Object?> get props => [];
}
