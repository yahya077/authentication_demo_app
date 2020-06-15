import 'package:authenticationdemoapp/utils/tab_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavi extends StatelessWidget {
  const CustomBottomNavi(
      {Key key,
        @required this.currentTab,
        @required this.onSelectedTab,
        @required this.sayfaOlusturucu,
        @required this.navigatorKeys})
      : super(key: key);

  final TabMenuItems currentTab;
  final ValueChanged<TabMenuItems> onSelectedTab;
  final Map<TabMenuItems, Widget> sayfaOlusturucu;
  final Map<TabMenuItems, GlobalKey> navigatorKeys;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _navItemOlustur(TabMenuItems.Main),
          _navItemOlustur(TabMenuItems.Search),
          _navItemOlustur(TabMenuItems.Share),
          _navItemOlustur(TabMenuItems.Event),
          _navItemOlustur(TabMenuItems.Profile),
        ],
        onTap: (index) => onSelectedTab(TabMenuItems.values[index]),
      ),
      tabBuilder: (context, index) {
        final gosterilecekItem = TabMenuItems.values[index];
        return CupertinoTabView(
            navigatorKey: navigatorKeys[gosterilecekItem],
            builder: (context) {
              return sayfaOlusturucu[gosterilecekItem];
            });
      },
    );
  }

  BottomNavigationBarItem _navItemOlustur(TabMenuItems tabItem) {
    final olusturalacakTab = TabItemData.tumTablar[tabItem];

    return BottomNavigationBarItem(
      icon: Icon(olusturalacakTab.icon),
      title: Text(olusturalacakTab.title),
    );
  }
}