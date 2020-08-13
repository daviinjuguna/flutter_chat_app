import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutterchatapp/features/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/already_have_an_account_check.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/background.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/custom_flushbar.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/input_decoration.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/primary_buttorn.dart';
import 'package:flutterchatapp/injection.dart';
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
  final TextEditingController _passwordControllerConfirmed =
      TextEditingController();
  final _key = GlobalKey<FormState>();
  bool _passwordVisible = false;

  RegisterBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = getIt<RegisterBloc>();
    _passwordVisible = false;

    _emailController.addListener(() {
      _bloc.add(RegisterEvent.emailChanged(_emailController.text));
    });
    _passwordController.addListener(() {
      _bloc.add(RegisterEvent.passwordChanged(_passwordController.text));
    });
    _nameController.addListener(() {
      _bloc.add(RegisterEvent.nameChanged(_nameController.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider<RegisterBloc>(
      create: (_) => _bloc,
      child: Scaffold(
        backgroundColor: Style.darkColor,
        body: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state.isSubmitting) {
              Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  backgroundColor: Style.secondaryColor,
                  content:loadingFlashbar(
                    "Signing Up",//title
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
                    "Sorry, Sign Up failed"//message
                  )
                ),
              );
            }
            if (state.isSuccess) {
            getIt<AuthBloc>().add(AuthEvent.loggedIn());
            ExtendedNavigator.of(context).replace(Routes.dashBoardPage);
          }
          },
          builder: (context, state) {
            return Background(
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
                    autovalidate: true,
                    style: TextStyle(color: Colors.white),
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    decoration: inputDecoration(
                      "Name",
                      "Enter your name",
                      Icon(LineAwesomeIcons.user),
                    ),
                    validator: (_){
                      return !state.isNameValid ? "Please enter a valid name" : null;
                    },
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                  TextFormField(
                    autovalidate: true,
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
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
                    validator: (_){
                      return !state.isPasswordValid ? "Please enter alpha-numerical min of 6" : null;
                    },
                  ),
                  SizedBox(height: SizeConfig.safeBlockHorizontal * 2,),
                  TextFormField(
                    autovalidate: true,
                    controller: _passwordControllerConfirmed,
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
                      if(v.trim() != _passwordController.text){
                        return "Passwords do not match";
                      }else{
                        return null;
                      }
                    },
                    onChanged: (v) {
                      if(v.trim() != _passwordController.text){
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
                _submit();
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
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.close();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void _submit() {
    _bloc.add(RegisterEvent.registerSubmitted(
        _emailController.text,
        _passwordController.text,
        _nameController.text,
        _passwordControllerConfirmed.text)); //email, password, name, passwordConfirmed in this order
  }
}
