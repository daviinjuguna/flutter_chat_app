import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/presentation/widgets/chat/friends_chat_card.dart';
import 'package:flutterchatapp/features/presentation/widgets/chat/my_chart_card.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';

class ChatPage extends StatefulWidget {
  final ConversationData data;

  const ChatPage({this.data}); //Conversation data
  @override
  _ChatPageState createState() => _ChatPageState(this.data);
}

class _ChatPageState extends State<ChatPage> {
  final ConversationData data;
  final ScrollController _controller = ScrollController();

  _ChatPageState(this.data);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.jumpTo(_controller.position.maxScrollExtent);
    });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Style.darkColor,
        leading: IconButton(
          icon: Icon(LineAwesomeIcons.angle_left,color: Style.primaryColor,),
          onPressed: ()=>ExtendedNavigator.of(context).pop()
        ),
        title: Text('${data.user.name}',
          style: TextStyle(color: Style.primaryColor),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child:ListView.builder(
              controller: _controller,
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal*4,
                vertical: SizeConfig.safeBlockVertical*3),
              itemCount: data.messages.length,
              itemBuilder: (context, index) => data.messages[index].userId == data.user.id ?
                FriendChatCard(messages: data.messages[index],):
                MyChatCard(),
                // FriendChatCard(),
                // MyChatCard(),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(32)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(width: 12,),
                Expanded(child: TextField(
                  style: TextStyle(color: Style.primaryColor),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type your message",
                    hintStyle: TextStyle(color: Style.primaryColor)
                  ),
                )),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Style.primaryColor),
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Style.secondaryColor,
                      Style.primaryColor,Style.primaryColor,Style.primaryColor,Style.primaryColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                    ),
                  ),
                  child: Icon(LineAwesomeIcons.paper_plane,color:Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}