// ignore_for_file: must_be_immutable

part of 'daftar_investor_bloc.dart';

@immutable
abstract class DaftarInvestorEvent extends Equatable {}

class DaftarInvestorInitialEvent extends DaftarInvestorEvent {
  @override
  List<Object?> get props => [];
}
