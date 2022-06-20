import 'package:json_annotation/json_annotation.dart';

part 'login_param.g.dart';

@JsonSerializable()
class LoginParam {
  String username;
  String password;
  String usergroup;

  LoginParam({
    required this.username,
    required this.password,
    required this.usergroup,
  });

  factory LoginParam.fromJson(Map<String, dynamic> json) =>
      _$LoginParamFromJson(json);
  Map<String, dynamic> toJson() => _$LoginParamToJson(this);
}
