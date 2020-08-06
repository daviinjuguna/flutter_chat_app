import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Wave extends StatefulWidget {
  @override
  _WaveState createState() => _WaveState();
}

class _WaveState extends State<Wave> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return PreferredSize(
      preferredSize: Size(100, 100),
      child: SafeArea(
        child: Container(
          color: Style.primaryColor,
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight * 0.25,
          child: Container(
            height: 80,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Container(
              color: Style.darkColor,
              child: Stack(
                children: <Widget>[
                  RotatedBox(
                    quarterTurns: 2,
                    child: WaveWidget(
                      config: CustomConfig(
                        colors: [Style.primaryColor],
                        durations: [22000],
                        heightPercentages: [-0.1],
                      ),
                      size:  Size(double.infinity, double.infinity),
                      waveAmplitude: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}