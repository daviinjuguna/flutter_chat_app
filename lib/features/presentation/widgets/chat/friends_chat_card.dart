import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';

class FriendChatCard extends StatelessWidget {
  const FriendChatCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(
        bottom: SizeConfig.safeBlockVertical,
        top: SizeConfig.safeBlockVertical,
      ),
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.end,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://picsum.photos/250?image=4',
            ),
          ),
          SizedBox(
            width:SizeConfig.safeBlockHorizontal * 2,
          ),
          Container(
            width: SizeConfig.screenWidth*.75,
            padding: EdgeInsets.all(21),
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
                Expanded(child: Text("Hey meeehhn, mi ni mziii..papa fololo mwenyewe,manzee iyo stuff ya access token jo shieeettt",style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}