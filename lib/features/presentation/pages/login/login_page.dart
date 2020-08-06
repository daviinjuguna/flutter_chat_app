import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/already_have_an_account_check.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/background.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/input_decoration.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/primary_buttorn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
     _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Style.darkColor,
      body: Background(
        child: ListView(
          children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight * .1,),
            Center(
              child: Text(
                "Sign In",
                style: GoogleFonts.leckerliOne(
                  fontSize: 32,fontWeight: FontWeight.w500,color: Colors.white
                ),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * .24,),
            Padding(
              padding:EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 4,
                // vertical: SizeConfig.blockSizeHorizontal
              ),
               child: Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      decoration: inputDecoration(
                        "Email",
                        "Enter your email",
                        Icon(LineAwesomeIcons.envelope),
                      ),
                    ),
                    SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                    TextFormField(
                      obscureText: !_passwordVisible,
                      style: TextStyle(color: Colors.white),
                      decoration: passwordInputDecoration(
                        "Password",
                        "Enter your password",
                        Icon(LineAwesomeIcons.lock),
                        IconButton(
                          icon: Icon(_passwordVisible ? LineAwesomeIcons.eye:LineAwesomeIcons.eye_slash),
                          onPressed: (){setState(() {
                           _passwordVisible = !_passwordVisible;
                          });}
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockHorizontal * 5,),
            PrimaryButton(
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 21,color: Colors.white),
                textAlign: TextAlign.center,
              ),
              onTap: (){
                ExtendedNavigator.of(context).popAndPush(Routes.dashBoardPage);
              },
            ),
            SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: ()=>ExtendedNavigator.of(context).replace(Routes.registerPage),
            )
          ],
        ),
      ),
    );
  }
}