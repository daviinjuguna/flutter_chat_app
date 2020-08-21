import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';

class MyChatCard extends StatelessWidget {
  const MyChatCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Container(
            width: SizeConfig.screenWidth*.75,
            padding: EdgeInsets.all(21),
            margin: EdgeInsets.only(
                bottom: SizeConfig.safeBlockVertical*0.1
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
                Expanded(child: Text("Hey meeehhn, mi ni mziii..papa fololo mwenyewe,manzee iyo stuff ya accessToken jo shieeettt",style: TextStyle(color: Style.primaryColor),)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}