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

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
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
          SizedBox(height: SizeConfig.screenHeight * .05,),
          Center(
            child: Text(
              "Sign Up",
              style: GoogleFonts.leckerliOne(
                fontSize: 32,fontWeight: FontWeight.w500,color: Colors.white
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * .2,),
          Padding(
            padding:EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal * 4,
              // vertical: SizeConfig.blockSizeHorizontal
            ),
            child: Form(
              // autovalidate: true,
              key: _key,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    decoration: inputDecoration(
                      "Name",
                      "Enter your name",
                      Icon(LineAwesomeIcons.user),
                    ),
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                  TextFormField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: inputDecoration(
                      "Email",
                      "Enter your email",
                      Icon(LineAwesomeIcons.envelope),
                    ),
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                  TextFormField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: !_passwordVisible,
                    decoration:passwordInputDecoration(
                      "Password",
                      "Enter your password",
                      Icon(LineAwesomeIcons.lock,),
                      IconButton(
                        icon: Icon(_passwordVisible ? LineAwesomeIcons.eye:LineAwesomeIcons.eye_slash),
                        onPressed: (){setState(() {
                          _passwordVisible = !_passwordVisible;
                        });}
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                  TextFormField(
                    // controller: _passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: !_passwordVisible,
                    decoration:passwordInputDecoration(
                      "Password Confirmation",
                      "Confirm your password",
                      Icon(LineAwesomeIcons.lock,),
                      IconButton(
                        icon: Icon(_passwordVisible ? LineAwesomeIcons.eye:LineAwesomeIcons.eye_slash),
                        onPressed: (){setState(() {
                          _passwordVisible = !_passwordVisible;
                        });}
                      ),
                    ),
                    validator: (v){
                      if(v.isEmpty){
                        return "Password confirmation required";
                      }else if(v.trim() != _passwordController.text){
                        return "Passwords do not match";
                      }
                    },
                    onChanged: (v) {
                      if(v.isEmpty){
                        return "Password confirmation required";
                      }else if(v.trim() != _passwordController.text){
                        return "Passwords do not match";
                      }
                    } ,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: SizeConfig.safeBlockHorizontal * 5,),
          PrimaryButton(
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 21,color: Colors.white),
              textAlign: TextAlign.center,
            ),
            onTap: (){
              if (_key.currentState.validate()) {
                print("is valid");
              }
            },
          ),
          SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: ()=>ExtendedNavigator.of(context).replace(Routes.loginPage),
          )
        ],
          ),
      ),
    );
  }
}