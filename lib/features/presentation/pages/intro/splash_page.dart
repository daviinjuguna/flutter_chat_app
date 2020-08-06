import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/features/presentation/bloc/auth_bloc/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (BuildContext context, AuthState state) { 
        state.map(
          authInitial: (_){},
          authSuccess: (_){},//TODO Route to HomePage,
          authFailure: (_) => ExtendedNavigator.of(context).pushIntroPage()
        );
      },
      child: Container(),
    );
  }
}