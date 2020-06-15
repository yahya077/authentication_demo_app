import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TabMenuItems {Main, Search, Share, Event, Profile}

class TabItemData{

  final String title;
  final IconData icon;

  TabItemData(this.title, this.icon);

  static Map<TabMenuItems,TabItemData> tumTablar = {

    TabMenuItems.Main : TabItemData("Ana sayfa", Icons.home),
    TabMenuItems.Search : TabItemData("Arama", Icons.search),
    TabMenuItems.Share : TabItemData("Payleş", Icons.share),
    TabMenuItems.Event : TabItemData("Event", Icons.event),
    TabMenuItems.Profile : TabItemData("Profile", Icons.person),
  };



}