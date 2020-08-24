part of 'update_message_bloc.dart';

@freezed
abstract class UpdateMessageEvent with _$UpdateMessageEvent{
  const factory UpdateMessageEvent.updateMessage(
    final Messages messages
  ) = UpdateMessage;
}
