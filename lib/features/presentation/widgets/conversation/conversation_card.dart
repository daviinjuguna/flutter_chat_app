import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';

class ConversationCard extends StatelessWidget {
  final Function onTap;
  const ConversationCard({
    Key key, this.onTap,
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
              'https://picsum.photos/250?image=9',
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Text("Ambudi",style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 18),),
               Text("07:00 am",style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 14),),
            ],
          ),
          subtitle: Text("My name is Ambudi Anshumbua",style: TextStyle(color: Colors.white),),
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