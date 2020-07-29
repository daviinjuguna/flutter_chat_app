import 'package:flutterchatapp/features/domain/entities/recover_password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recover_password_model.g.dart';

@JsonSerializable()
class RecoverPasswordModel extends RecoverPassword {
  final int pin;
  final String message;

  RecoverPasswordModel({
    @required this.pin, 
    @required this.message});

  @override
  List<Object> get props => [
    pin,message
  ];

  factory RecoverPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$RecoverPasswordModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$RecoverPasswordModelToJson(this);
}