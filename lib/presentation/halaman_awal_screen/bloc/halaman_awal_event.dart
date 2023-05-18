// ignore_for_file: must_be_immutable

part of 'halaman_awal_bloc.dart';

@immutable
abstract class HalamanAwalEvent extends Equatable {}

class HalamanAwalInitialEvent extends HalamanAwalEvent {
  @override
  List<Object?> get props => [];
}
