import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';

abstract class ChatRepository {
  Future<Either<Failure,GetConversationModel>> getConversation();
}