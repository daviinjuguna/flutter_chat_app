import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/data/model/post_message_model.dart';
import 'package:flutterchatapp/features/presentation/bloc/post_bloc/post_message_bloc.dart';
import 'package:flutterchatapp/features/presentation/widgets/chat/friends_chat_card.dart';
import 'package:flutterchatapp/features/presentation/widgets/chat/my_chart_card.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/custom_dialogue.dart';
import 'package:flutterchatapp/injection.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';

class ChatPage extends StatefulWidget {
  final ConversationData data;

  const ChatPage({this.data}); //Conversation data
  @override
  _ChatPageState createState() => _ChatPageState(this.data);
}

class _ChatPageState extends State<ChatPage>
    with AutomaticKeepAliveClientMixin {
  ConversationData data = new ConversationData();
  final ScrollController _controller = ScrollController();
  final TextEditingController _messageController = TextEditingController();

  GetConversationModel messageModel;

  PostMessageBloc _bloc;

  _ChatPageState(this.data);

  @override
  void initState() {
    _bloc = getIt<PostMessageBloc>();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.jumpTo(_controller.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider<PostMessageBloc>(
      create: (_) => _bloc,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Style.darkColor,
          leading: IconButton(
              icon: Icon(
                LineAwesomeIcons.angle_left,
                color: Style.primaryColor,
              ),
              onPressed: () => ExtendedNavigator.of(context).pop()),
          title: Text(
            '${data.user.name}',
            style: TextStyle(color: Style.primaryColor),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BlocBuilder<PostMessageBloc, PostMessageState>(
              builder: (context, state) {
                if (state is PostMessageSuccess){//! ngooojaaaa hapa kuna nomaa sanna, ungekuja jana ngojaaaa
                  return Expanded(
                  child: ListView.builder(//TODO baadoo hii method badooo....
                    controller: _controller,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.safeBlockHorizontal * 4,
                        vertical: SizeConfig.safeBlockVertical * 3),
                    itemCount: state.model.data.length,
                    itemBuilder: (context, index) =>state.model.data[index]
                                .messages[index].userId ==
                            state.model.data[index].user.id
                        ? FriendChatCard(
                            messages: state.model.data[index].messages[index],
                            imageUrl: state.model.data[index].user.imageUrl,
                          )
                        : MyChatCard(
                            messages: state.model.data[index].messages[index],
                          ), //TODO baddo ngooojaaaa..hapa bado..lazima nione vle ntaeka
                    // FriendChatCard(),
                    // MyChatCard(),S
                  ),
                  );
                }
                //! hii iko sawa...usiguze
                return Expanded(
                  child: ListView.builder(
                    controller: _controller,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.safeBlockHorizontal * 4,
                        vertical: SizeConfig.safeBlockVertical * 3),
                    itemCount: data.messages.length,
                    itemBuilder: (context, index) => data
                                .messages[index].userId ==
                            data.user.id
                        ? FriendChatCard(
                            messages: data.messages[index],
                            imageUrl: data.user.imageUrl,
                          )
                        : MyChatCard(
                            messages: data.messages[index],
                          ), //TODO baddo ngooojaaaa..hapa bado..lazima nione vle ntaeka
                    // FriendChatCard(),
                    // MyChatCard(),
                  ),
                );
              },
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(32)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: TextField(
                    controller: _messageController,
                    style: TextStyle(color: Style.primaryColor),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type your message",
                        hintStyle: TextStyle(color: Style.primaryColor)),
                  )),
                  InkWell(
                    onTap: () async {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (_messageController.text.isEmpty) return;
                      var success = await _sendMessage();
                      if (success != null) {
                        _controller
                            .jumpTo(_controller.position.maxScrollExtent);
                        _messageController.clear();
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Style.primaryColor),
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Style.secondaryColor,
                              Style.primaryColor,
                              Style.primaryColor,
                              Style.primaryColor,
                              Style.primaryColor
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                      child: Icon(LineAwesomeIcons.paper_plane,
                          color: Colors.white),
                    ),
                  ), //inkwelll
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
    _controller.dispose();
  }

  _sendMessage() {
    _bloc.add(PostMessageEvent.sendMessage(_messageController.text, data.id));
  }

  @override
  bool get wantKeepAlive => true;
}
