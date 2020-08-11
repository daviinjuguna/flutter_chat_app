import 'package:json_annotation/json_annotation.dart';

part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel {

  @JsonKey(name:"token_type")
  String tokenType;

  @JsonKey(name:"expires_in")
  int expiresIn;

  @JsonKey(name:"access_token")
  String accessToken;

  @JsonKey(name:"refresh_token")
  String refreshToken;

  AuthModel(
    {this.tokenType, this.expiresIn, this.accessToken, this.refreshToken});

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);

}