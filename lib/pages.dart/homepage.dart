import 'package:flutter/material.dart';
import 'package:whatsapp/pages.dart/calls_page.dart';
import 'package:whatsapp/pages.dart/chats_page.dart';
import 'package:whatsapp/pages.dart/communities_page.dart';
import 'package:whatsapp/pages.dart/settings_page.dart';
import 'package:whatsapp/pages.dart/updates_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 3;
  void _navigateBottomBar(int Index) {
    setState(() {
      _selectedIndex = Index;
    });
  }

  final screens = const [
    UpdatesPage(),
    CallsPage(),
    CommunitiesPage(),
    ChatsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black.withOpacity(0.8),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mark_chat_unread_sharp,
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_outline,
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
