import 'dart:io';

class MemberEntity {
  final String firstName;
  final String middleName;
  final String lastName;
  final String birthDate;
  final int age;
  final String gender;
  final String maritalStatus;
  final String qualification;
  final String occupation;
  final String natureOfDuties;
  final String bloodGroup;
  final File? photo;
  final String? photoUrl;
  final String emailAddress;
  final String phoneNumber;
  final String alterNumber;
  final String landlineNumber;
  final String socialMediaUrl;
  final String flatNumber;
  final String buildingName;
  final String streetName;
  final String landMark;
  final String city;
  final String district;
  final String state;
  final String nativeCity;
  final String nativeState;
  final String country;
  final String pincode;

  MemberEntity({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.age,
    required this.gender,
    required this.maritalStatus,
    required this.occupation,
    required this.qualification,
    required this.birthDate,
    required this.bloodGroup,
    required this.natureOfDuties,
    required this.emailAddress,
    required this.phoneNumber,
    required this.alterNumber,
    required this.landlineNumber,
    required this.socialMediaUrl,
    required this.flatNumber,
    required this.buildingName,
    required this.streetName,
    required this.landMark,
    required this.city,
    required this.district,
    required this.state,
    required this.nativeCity,
    required this.nativeState,
    required this.country,
    required this.pincode,
    this.photo,
    this.photoUrl,
  });
}
