// To parse required this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    LoginModel({
        required this.userid,
        required this.usergroup,
        required this.empCode,
        required this.name,
        required this.email,
        required this.mobile,
        required this.userimg,
        required this.loginLogId,
        required this.lastlogin,
        required this.message,
    });

    String userid;
    String usergroup;
    String empCode;
    String name;
    String email;
    String mobile;
    String userimg;
    int loginLogId;
    DateTime lastlogin;
    String message;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        userid: json["userid"],
        usergroup: json["usergroup"],
        empCode: json["emp_code"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        userimg: json["userimg"],
        loginLogId: json["loginLogId"],
        lastlogin: DateTime.parse(json["lastlogin"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "userid": userid,
        "usergroup": usergroup,
        "emp_code": empCode,
        "name": name,
        "email": email,
        "mobile": mobile,
        "userimg": userimg,
        "loginLogId": loginLogId,
        "lastlogin": lastlogin.toIso8601String(),
        "message": message,
    };
}
