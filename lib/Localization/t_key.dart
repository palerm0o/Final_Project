

import 'app_localizations.dart';

enum TKeys{
  LogIn,T1,T2,T3,T4,T5,T6,T7,T8,T9,OldPeople,YoungPeople,
  SignUp,L1,L2,L3,L4,L5,L6,L7,L8,O1,O2,O3,O4,O5,O6,O7,O8,
  DontHaveAnAccount,Cloce,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,
  ForgetPassword,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16,C17,C18,
  Password,Result,SorryNothingSelected,Profile,Home,CreatedSuccessfuled,ViewDoctors,
  Email,EditProfile,AccountInformation,Setting,Hellp,LogOut,EditSuccessfuled,Changelanguge,
  LoginToYourAccount,Tuberculosis,Pneumonia,Covid,Doctors,Name,Symptoms,
  WelcomeBack,Register,CreateYourAccount,FirstName,LastName,EnterDate,Location,Next,Language,
  Repeatpassword,Phone,Gender,Submit,AlreadyHaveAnAccount,Loading,SelectImage,LungOpacity
}

//TKeys.hello
extension TKeysExtention on TKeys {
  String get _string => toString().split('.')[1];

  String translate(context) {
    return LocalizationService.of(context).translate(_string) ?? '';
  }
}