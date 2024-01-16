// ignore_for_file: must_be_immutable

part of 'sign_up_notifier.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.phoneController,
    this.signUpModelObj,
  });

  TextEditingController? phoneController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        phoneController,
        signUpModelObj,
      ];

  SignUpState copyWith({
    TextEditingController? phoneController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      phoneController: phoneController ?? this.phoneController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
