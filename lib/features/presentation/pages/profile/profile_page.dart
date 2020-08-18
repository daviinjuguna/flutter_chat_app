import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/features/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutterchatapp/injection.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Style.darkColor,
      child: IconButton(
      icon: Icon(
        LineAwesomeIcons.arrow_left,color: Colors.white,
      ),
      onPressed: ()async{
        getIt<AuthBloc>().add(AuthEvent.loggedOut());
        ExtendedNavigator.of(context).replace(Routes.introPage);
      }
      
    ),
  );
  }
}