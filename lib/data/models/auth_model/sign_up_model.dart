class SignUpResponseModel {
  String? token;
  DateTime? expiryDate;
  String? userID;

  SignUpResponseModel({
    this.token,
    this.expiryDate,
    this.userID,
  });

  SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['idToken'];
    expiryDate =
        DateTime.now().add(Duration(seconds: int.parse(json['expiresIn'])));
    userID = json['localId'];
  }
}

class UserData {
  String? id;
  String? name, email, phone, image;
  String? token;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    token = json['token'];
  }
}
