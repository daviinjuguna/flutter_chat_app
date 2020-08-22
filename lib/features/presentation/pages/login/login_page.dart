import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutterchatapp/features/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/already_have_an_account_check.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/background.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/custom_flushbar.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/input_decoration.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/primary_buttorn.dart';
import 'package:flutterchatapp/injection.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;
  LoginBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<LoginBloc>();
    _passwordVisible = false;

    _emailController.addListener(() {
      _bloc.add(LoginEvent.emailChanged(_emailController.text));
     });
    _passwordController.addListener(() {
      _bloc.add(LoginEvent.passwordChanged(_passwordController.text));
     });
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider<LoginBloc>(
      create: (_) => _bloc,
      child: Scaffold(
        backgroundColor: Style.darkColor,
        body: BlocConsumer<LoginBloc,LoginState>(

          listener: (BuildContext context, LoginState state) { 
            if (state.isSubmitting) {
              Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: Style.secondaryColor,
                  content:loadingFlashbar(
                    "Signing In",//title
                    "Please wait........"//message
                  ),
                )
              );
            }
            if (state.isFailure) {
              Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red[400],
                  content: errorFlushbar(
                    "Sorry, Sign in failed, check your credentials"//message
                  )
                ),
              );
            }
            if (state.isSuccess) {
            getIt<AuthBloc>().add(AuthEvent.loggedIn());
             ExtendedNavigator.of(context).replace(Routes.dashBoardPage);
          }
          },
          builder: (BuildContext context, LoginState state) { 
            return  Background(
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
                     child: Column(
                       children: <Widget>[
                         TextFormField(
                           autovalidate: true,
                           controller: _emailController,
                           keyboardType: TextInputType.emailAddress,
                           style: TextStyle(color: Colors.white),
                           decoration: inputDecoration(
                             "Email",
                             "Enter your email",
                             Icon(LineAwesomeIcons.envelope),
                           ),
                           validator: (_){
                           return !state.isEmailValid ? "Please enter a valid email" : null;
                         },
                         ),
                         SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                         TextFormField(
                           autovalidate: true,
                           controller: _passwordController,
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
                           validator: (_){
                           return !state.isPasswordValid ? "Please enter alpha-numerical min of 6" :null;
                         },
                         ),
                       ],
                     ),
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 5,),
                  PrimaryButton(
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 21,color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onTap: _submit,
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                  AlreadyHaveAnAccountCheck(
                    login: true,
                    press: ()=>ExtendedNavigator.of(context).replace(Routes.registerPage),
                  )
                ],
              ),
            );
          },
              
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _bloc.close();
    super.dispose();
  }

  void _submit(){
    _bloc.add(LoginEvent.loginPressed(
      _emailController.text,
      _passwordController.text
    ));
  }
}