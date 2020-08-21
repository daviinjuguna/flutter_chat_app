import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';
import 'package:timeago/timeago.dart' as timeago;

class ConversationCard extends StatelessWidget {
  final ConversationData data;//Conversation data
  final Function onTap;
  const ConversationCard({
    Key key, this.onTap, this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: <Widget>[
        ListTile(
          onTap: onTap,
          leading: ClipOval(
            child: Image.network(
              'https://picsum.photos/250?image=9',//TODO impliment images,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Text(data.user.name,
                  style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 18),),
               Text(timeago.format(DateTime.parse(data.messages.last.createdAt)),
                  style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 14),),
            ],
          ),
          subtitle: Text(data.messages.last.body,
              style: TextStyle(color: Colors.white),),
        ),
        Divider(
          color: Style.primaryColor.withOpacity(.5),
          indent: SizeConfig.blockSizeHorizontal * 20,
          endIndent: SizeConfig.blockSizeHorizontal * 4,
        )
      ],
    );
  }
}