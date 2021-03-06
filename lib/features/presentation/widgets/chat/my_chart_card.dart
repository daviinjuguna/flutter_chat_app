import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/data/model/conversation/message_model.dart';

class MyChatCard extends StatelessWidget {
  final MessagesModel messages;
  const MyChatCard({
    Key key, @required this.messages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(
            width: SizeConfig.screenWidth*.70,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(
                bottom: SizeConfig.safeBlockVertical,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Style.primaryColor),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight:Radius.circular(28),
                  bottomLeft: Radius.circular(28),
                )
            ),
            child: Row(
              children: <Widget>[
                Expanded(child: Text("${messages.body}",style: TextStyle(color: Style.primaryColor),)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}