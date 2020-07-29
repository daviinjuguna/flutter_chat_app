import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/features/data/model/change_model.dart';
import 'package:flutterchatapp/features/data/model/login_model.dart';
import 'package:flutterchatapp/features/data/model/recover_model.dart';
// import 'package:flutterchatapp/features/data/model/refresh_model.dart';
import 'package:flutterchatapp/features/data/model/register_model.dart';
import 'package:flutterchatapp/features/domain/entities/api_success.dart';
import 'package:flutterchatapp/features/domain/entities/change_password.dart';
import 'package:flutterchatapp/features/domain/entities/recover_password.dart';
import 'package:flutterchatapp/features/domain/entities/register.dart';

abstract class ChatRepository{
  Future<Either<Failure,ApiSuccess>> loginUser(LoginModel model);
  Future<Either<Failure,ApiSuccess>>registerUser(RegisterModel model);
  Future<Either<Failure,RecoverPassword>>recoverPassword(RecoverModel model);
  Future<Either<Failure,ChangePassword>>changePassword(ChangeModel model);
  // Future<Either<Failure,ApiSuccess>>refreshToken(RefreshModel model);
  Future<Either<Failure, Register>> getCacheUser();
}