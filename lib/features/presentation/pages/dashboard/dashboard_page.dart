import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/features/presentation/pages/conversation/conversation_page.dart';
import 'package:flutterchatapp/features/presentation/pages/profile/profile_page.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            ConversationPage(),
            Container(color: Style.darkColor,),
            ProfilePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Style.darkColor,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        selectedIndex: _currentIndex,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(LineAwesomeIcons.sms),
            title: Text("Messages"),
            textAlign: TextAlign.center,
            activeColor: Style.primaryColor
          ),
          BottomNavyBarItem(
            icon: Icon(LineAwesomeIcons.users),
            title: Text("Friends"),
            textAlign: TextAlign.center,
            activeColor: Style.primaryColor
          ),
          BottomNavyBarItem(
            icon: Icon(LineAwesomeIcons.user),
            title: Text("Profile"),
            textAlign: TextAlign.center,
            activeColor: Style.primaryColor
          ),
        ],
      ),
    );
  }
    @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

