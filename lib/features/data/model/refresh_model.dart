import 'package:flutterchatapp/features/domain/entities/refresh.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_model.g.dart';

@JsonSerializable()
class RefreshModel extends Refresh {
  final String refresh_token;

  RefreshModel({@required this.refresh_token}):super(refresh_token:refresh_token);

  @override
  List<Object> get props => [refresh_token];

    factory RefreshModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshModelFromJson(json);
  
  Map<String, dynamic> toJson() => _$RefreshModelToJson(this);
}