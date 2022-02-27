class AuthResponseModel {
  String token;
  DateTime expiryDate;
  String userID;

  AuthResponseModel({
    required this.token,
    required this.expiryDate,
    required this.userID,
  });

  factory AuthResponseModel.fromMap(Map<String, dynamic> map) {
    return AuthResponseModel(
      token: map['idToken'] ?? '',
      expiryDate: DateTime.now().add(
        Duration(
          seconds: int.parse(map['expiresIn']),
        ),
      ),
      userID: map['localId'] ?? '',
    );
  }
}

class AuthRequestModel {
  String email;
  String password;
  bool returnSecureToken = true;

  AuthRequestModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'returnSecureToken': returnSecureToken,
    };
  }
}

class UserData {
  String id;
  String fname;
  String lname;
  String email;
  String phone;
  String image;
  UserData({
    required this.id,
    required this.fname,
    required this.lname,
    required this.email,
    required this.phone,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'fname': fname,
      'lname': lname,
      'email': email,
      'phone': phone,
      'image': image,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['id'] ?? '',
      fname: map['fname'] ?? '',
      lname: map['lname'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      image: map['image'] ?? '',
    );
  }
}
