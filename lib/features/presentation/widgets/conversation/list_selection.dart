import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:timeago/timeago.dart' as timeago;

class ConversationListView extends StatelessWidget {
  final listObject;
  final Function onTap;
  const ConversationListView({Key key, @required this.listObject, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return new ListView.builder(
      itemCount:listObject?.length,
      padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
      itemBuilder:(context,index){
        return Column(
          children: <Widget>[
        ListTile(
          onTap: onTap(listObject[index]),
          leading: ClipOval(
            child: Image.network(
              'https://picsum.photos/250?image=9',//TODO impliment images,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Text(listObject[index].user.name,
                  style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 18),),
               Text(timeago.format(DateTime.parse(listObject[index].messages.last.createdAt)),
                  style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 14),),
            ],
          ),
          subtitle: Text(listObject[index].messages.last.body,
              style: TextStyle(color: Colors.white),),
        ),
        Divider(
          color: Style.primaryColor.withOpacity(.5),
          indent: SizeConfig.blockSizeHorizontal * 20,
          endIndent: SizeConfig.blockSizeHorizontal * 4,
        )
      ],
        );
      },
    );
  }
}