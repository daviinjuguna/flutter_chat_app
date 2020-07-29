import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/core/usecase/usecase.dart';
import 'package:flutterchatapp/features/domain/entities/register.dart';
import 'package:flutterchatapp/features/domain/repository/chat_repository.dart';

class GetUserProfile extends UseCase<Register, NoParams> {
  final ChatRepository repository;

  GetUserProfile({@required this.repository});

  @override
  Future<Either<Failure, Register>> call(NoParams params) {
    return repository.getCacheUser();
  }
}