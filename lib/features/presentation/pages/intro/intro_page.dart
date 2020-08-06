import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/primary_buttorn.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Style.darkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "Lets Chat",
                style: GoogleFonts.leckerliOne(
                  fontSize: 32,fontWeight: FontWeight.w500,color: Colors.white
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PrimaryButton(
                  onTap: ()=>ExtendedNavigator.of(context).replace(Routes.loginPage),
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 21,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                PrimaryButton(
                  onTap: ()=>ExtendedNavigator.of(context).replace(Routes.registerPage),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 21,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}