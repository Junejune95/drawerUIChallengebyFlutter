class UserModel {
  String id;
  String username;
  String email;
  String gender;
  String dateOfBirth;
  String image;
  String role;
  String parent;
  String address;
  String relationship;
  String phoneNumber;
  String education;
  String emergencyContact;
  String position;
  String startDate;

  UserModel({
    this.id,
    this.username,
    this.email,
    this.gender,
    this.dateOfBirth,
    this.image,
    this.role,
    this.parent,
    this.address,
    this.relationship,
    this.phoneNumber,
    this.education,
    this.emergencyContact,
    this.position,
    this.startDate,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      gender: json['gender'],
      dateOfBirth: json['dateOfBirth'],
      image: json['image'],
      role: json['role'],
      parent: json['parent'],
      address: json['address'],
      relationship: json['relationship'],
      phoneNumber: json['phoneNumber'],
      education: json['education'],
      emergencyContact: json['emergencyContact'],
      position: json['position'],
      startDate: json['startDate'],
  
    );
  }
}
