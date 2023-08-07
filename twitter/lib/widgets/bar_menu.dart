import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:twitter/providers/share_state.dart';
import 'package:twitter/screens/chats_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';

class BottomBarMenu extends StatefulWidget {
  const BottomBarMenu({Key? key}) : super(key: key);

  @override
  State<BottomBarMenu> createState() => _BottomBarMenuState();
}

class _BottomBarMenuState extends State<BottomBarMenu> {
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationsScreen(),
    const ChatsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    int index = Provider.of<SharedState>(context, listen: false).pageNum;

    Color homeColor = index == 0 ? Colors.blue.shade800 : Colors.grey;
    Color searchColor = index == 1 ? Colors.blue.shade800 : Colors.grey;
    Color notifyColor = index == 2 ? Colors.blue.shade800 : Colors.grey;
    Color chatsColor = index == 3 ? Colors.blue.shade800 : Colors.grey;

    return Consumer<SharedState>(
      builder: (context, appState, child) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: index,
          onTap: (index) {
            appState.setPageIndex = index;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => screens[index]));
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: homeColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: searchColor,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: notifyColor,
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: chatsColor,
              ),
              label: 'Chats',
            ),
          ],
        );
      },
    );
  }
}