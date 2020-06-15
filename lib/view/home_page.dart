import 'package:authenticationdemoapp/utils/custom_bottom_navi.dart';
import 'package:authenticationdemoapp/utils/tab_items.dart';
import 'package:authenticationdemoapp/view/screens/main/event_screen.dart';
import 'package:authenticationdemoapp/view/screens/main/main_screen.dart';
import 'package:authenticationdemoapp/view/screens/main/profile_screen.dart';
import 'package:authenticationdemoapp/view/screens/main/search_screen.dart';
import 'package:authenticationdemoapp/view/screens/main/share_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TabMenuItems _currentTab = TabMenuItems.Main;

  Map<TabMenuItems, GlobalKey<NavigatorState>> navigatorKeys = {
    TabMenuItems.Main: GlobalKey<NavigatorState>(),
    TabMenuItems.Search: GlobalKey<NavigatorState>(),
    TabMenuItems.Share: GlobalKey<NavigatorState>(),
    TabMenuItems.Event: GlobalKey<NavigatorState>(),
    TabMenuItems.Profile: GlobalKey<NavigatorState>(),
  };

  Map<TabMenuItems, Widget> tumSayfalar() {
    return {
      TabMenuItems.Main: MainScreen(onPressed: () => setState(() => _currentTab = TabMenuItems.Search)),
      TabMenuItems.Search: SearchScreen(),
      TabMenuItems.Share: ShareScreen(),
      TabMenuItems.Event: EventScreen(),
      TabMenuItems.Profile: ProfileScreen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async =>
      !await navigatorKeys[_currentTab].currentState.maybePop(),
      child: CustomBottomNavi(sayfaOlusturucu: tumSayfalar(),
          navigatorKeys: navigatorKeys,
          currentTab: _currentTab,
          onSelectedTab: (secilenTab) {
            if(secilenTab == _currentTab){
              navigatorKeys[secilenTab].currentState.popUntil((route) => route.isFirst);
            }else {
              setState(() {
                _currentTab = secilenTab;
              });
            }
            print("chosen tab${secilenTab.toString()}");
          }),
    );
  }
}