import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/data/model/conversation/conversation_model.dart';
import 'package:flutterchatapp/features/data/model/conversation/message_model.dart';
import 'package:flutterchatapp/features/presentation/bloc/post_bloc/post_message_bloc.dart';
import 'package:flutterchatapp/features/presentation/widgets/chat/friends_chat_card.dart';
import 'package:flutterchatapp/features/presentation/widgets/chat/my_chart_card.dart';
import 'package:flutterchatapp/injection.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';



class ChatPage extends StatefulWidget {
  final ConversationModel conversation;

  const ChatPage({this.conversation}); //Conversation data
  @override
  _ChatPageState createState() => _ChatPageState(this.conversation);
}

class _ChatPageState extends State<ChatPage>
    with AutomaticKeepAliveClientMixin {
  final ConversationModel conversation;
  final ScrollController _controller = ScrollController();
  final TextEditingController _messageController = TextEditingController();

 

  PostMessageBloc _bloc;

  _ChatPageState(this.conversation);

  @override
  void initState() {
    _bloc = getIt<PostMessageBloc>();
    super.initState();
    _messageController.clear();
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
            '${conversation.user.name}',
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
                 
                  _messageController.clear();
                  var message = state.message;
                  _controller.jumpTo(_controller.position.maxScrollExtent);
                  // data.messages.add(value):
                  conversation.messages.add(message);
                  
                }
                //! hii iko sawa...usiguze
                return Expanded(
                  child: ListView.builder(
                    controller: _controller,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.safeBlockHorizontal * 4,
                        vertical: SizeConfig.safeBlockVertical * 3),
                    itemCount: conversation.messages.length,
                    itemBuilder: (context, index) => conversation
                                .messages[index].userId ==
                            conversation.user.id
                        ? FriendChatCard(
                            messages: conversation.messages[index],
                            imageUrl: conversation.user.imageUrl,
                          )
                        : MyChatCard(
                            messages: conversation.messages[index],
                          ), //TODO baddo ngooojaaaa..hapa bado..lazima nione vle ntaeka
                    // FriendChatCard(),
                    // MyChatCard(),
                  ),
                );
              },
            ),
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.all(2),
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
    // _bloc.close();
    super.dispose();
    // _controller.dispose();
  }

  _sendMessage() {
    _bloc.add(PostMessageEvent.sendMessage(_messageController.text, conversation.id));
  }

  @override
  bool get wantKeepAlive => true;
}
