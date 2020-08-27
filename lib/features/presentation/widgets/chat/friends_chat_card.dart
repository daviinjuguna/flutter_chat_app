import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/data/model/conversation/message_model.dart';
class FriendChatCard extends StatelessWidget {
  final MessagesModel messages;
  final String imageUrl;
  const FriendChatCard({
    Key key,this.messages,this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(
        bottom: SizeConfig.safeBlockVertical,
        // top: SizeConfig.safeBlockVertical,
      ),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: <Widget>[
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
              imageUrl != null ?imageUrl
              :'https://ramcotubular.com/wp-content/uploads/default-avatar.jpg',
            ),
          ),
          SizedBox(
            width:SizeConfig.safeBlockHorizontal * 2,
          ),
          Expanded(
            child: Container(
              width: SizeConfig.screenWidth*.75,
              padding: EdgeInsets.all(12),
              // margin: EdgeInsets.only(
              //   bottom: SizeConfig.safeBlockVertical,
              // ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Style.secondaryColor,
                        Style.primaryColor,
                        Style.primaryColor,
                        Style.primaryColor,
                        Style.primaryColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight:Radius.circular(28),
                    bottomRight: Radius.circular(28),
                  )
              ),
              child: Row(
                children: <Widget>[
                  Expanded(child: Text("${messages.body}",style: TextStyle(color: Colors.white),)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}