import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/presentation/widgets/conversation/conversation_card.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ConversationPage extends StatefulWidget {
  ConversationPage({Key key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(
          icon: Icon(LineAwesomeIcons.search, color: Style.primaryColor,),
          onPressed: null),
        title: Text("Messages",style: TextStyle(color:Style.primaryColor),),
        centerTitle: true,
        backgroundColor: Style.darkColor,
       ),
       body: Center(
         child: ListView(
           padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
           children: <Widget>[
             ConversationCard(
               onTap: ()=>ExtendedNavigator.of(context).pushChatPage(),
             ),
             ConversationCard(),
             ConversationCard(),
             ConversationCard(),
             ConversationCard(),
             ConversationCard(),
             ConversationCard(),
             ConversationCard(),
             ConversationCard(),
           ],
         ),
       ),
    );
  }
}

