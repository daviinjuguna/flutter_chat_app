import 'package:dartz/dartz.dart';
import 'package:flutterchatapp/core/errors/failures.dart';
import 'package:flutterchatapp/features/data/model/api_success_model.dart';
import 'package:flutterchatapp/features/data/model/conversation/conversation_model.dart';
import 'package:flutterchatapp/features/data/model/conversation/message_model.dart';


abstract class ChatRepository {
  Future<Either<Failure,List<ConversationModel>>> getConversation();
  Future<Either<Failure,MessagesModel>>postMessage(String body,int conversationId);
  // Future<Either<Failure,ConversationData>>updateMessage(Messages messages);
}