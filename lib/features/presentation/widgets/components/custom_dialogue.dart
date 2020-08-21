import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


AwesomeDialog errorDialogue(
  BuildContext context,String desc,Function pressRefresh,Function pressCancel
){
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.ERROR,
    animType: AnimType.RIGHSLIDE,
    headerAnimationLoop: false,
    title: 'Error',
    desc: desc,
    btnOkText: "Refresh",
    btnOkOnPress: pressRefresh,
    // btnOkIcon: LineAwesomeIcons.redo,
    btnOkColor: Colors.green,
    btnCancelText: "Cancel",
    btnCancelOnPress: pressCancel,
    // btnCancelIcon: LineAwesomeIcons.slash,
    btnCancelColor: Colors.red,
  );
}