// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  ProfileState({
    this.grouponeController,
    this.profileModelObj,
  });

  TextEditingController? grouponeController;

  ProfileModel? profileModelObj;

  @override
  List<Object?> get props => [
        grouponeController,
        profileModelObj,
      ];
  ProfileState copyWith({
    TextEditingController? grouponeController,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      grouponeController: grouponeController ?? this.grouponeController,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
