import 'package:flutter/material.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/wave.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key key,@required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Wave(),
          child
        ],
      ),
    );
  }
}