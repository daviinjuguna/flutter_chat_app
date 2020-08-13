import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/features/data/model/api_success_model.dart';

abstract class AuthRepository {
  Future<Either<Failure,ApiSuccessModel>> loginUser(String email, String password);
  Future<Either<Failure,ApiSuccessModel>> registerUser(String name,String email, String password,String passwordConfirmation);
  Future<Either<Failure,ApiSuccessModel>> logout();
  Future<Either<Failure,ApiSuccessModel>> refreshToken();
}