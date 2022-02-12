class AuthResponseModel {
  String? token;
  DateTime? expiryDate;
  String? userID;

  AuthResponseModel({
    this.token,
    this.expiryDate,
    this.userID,
  });

  AuthResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['idToken'];
    expiryDate =
        DateTime.now().add(Duration(seconds: int.parse(json['expiresIn'])));
    userID = json['localId'];
  }
}

class UserData {
  String? id;
  String? fname;
  String? lname;
  String? email;
  String? phone;
  String? image;
  UserData({
    this.id,
    this.fname,
    this.lname,
    this.email,
    this.phone,
    this.image,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fname = json['fname'];
    lname = json['lName'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
  }
}
