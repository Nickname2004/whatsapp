import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() =>
      _ChatsPageState(); // Creating stateful widget for ChatsPage
}

class _ChatsPageState extends State<ChatsPage> {
  int _selectedIndex = 0; // Index for bottom navigation bar
  int _topButtonIndex = 0; // Index for top buttons

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Method to handle bottom navigation item taps
    });
  }

  void _onTopButtonPressed(int index) {
    setState(() {
      _topButtonIndex = index; // Method to handle top button taps
    });
  }

  final List<String> _users = [
    // List of users for display
    'user 1',
    'user 2',
    'user 3',
    'user 4',
    'user 5',
    'user 6',
    'user 7',
    'user 8',
    'user 9',
    'user 10',
    'user 11',
    'user 12',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> topButtonContent = <Widget>[
      // Content for top buttons
      ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            splashColor: Colors.transparent.withOpacity(0.5),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.grey,
                      size: 65,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Text(
                      _users[index],
                      style: const TextStyle(
                        color: Colors.white, // Text color for user names
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No unread chats', // Text for no unread chats
              style: TextStyle(color: Colors.grey[400]),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'View all chats', // Text for view all chats
              style: TextStyle(
                color: Colors.green[400],
              ),
            ),
          ],
        ),
      ),
      const Text(
        'You aren\'t in any groups', // Text for no groups
        style: TextStyle(color: Colors.grey),
      ),
    ];

    List<Widget> bottomNavContent = <Widget>[
      // Content for bottom navigation bar
      const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Updates', // Text for Updates tab
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
      const Center(
        child: Text('Calls',
            style: TextStyle(
                fontSize: 24, color: Colors.white)), // Text for Calls tab
      ),
      const Center(
        child: Text('Communities',
            style: TextStyle(
                fontSize: 24, color: Colors.white)), // Text for Communities tab
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0, left: 10),
            child: Text(
              'Chats', // Text for Chats section title
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.5),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 12.5),
                        hintText: 'Search', // Placeholder text for search field
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 5,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _topButtonIndex == 0
                        ? Color.fromARGB(
                            255, 4, 66, 26) // Button color for 'All' button
                        : Colors.grey[850],
                    foregroundColor:
                        _topButtonIndex == 0 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () => _onTopButtonPressed(0),
                  child: Text('All'), // Text for 'All' button
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _topButtonIndex == 1
                        ? Color.fromARGB(
                            255, 4, 66, 26) // Button color for 'Unread' button
                        : Colors.grey[850],
                    foregroundColor:
                        _topButtonIndex == 1 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () => _onTopButtonPressed(1),
                  child: Text('Unread'), // Text for 'Unread' button
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _topButtonIndex == 2
                      ? Color.fromARGB(
                          255, 4, 66, 26) // Button color for 'Groups' button
                      : Colors.grey[850],
                  foregroundColor:
                      _topButtonIndex == 2 ? Colors.white : Colors.grey,
                ),
                onPressed: () => _onTopButtonPressed(2),
                child: Text('Groups'), // Text for 'Groups' button
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                splashColor: Colors.transparent.withOpacity(0.5),
                child: Ink(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    color: Colors.transparent,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 25),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.archive_outlined, // Icon for 'Archived' item
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Archived', // Text for 'Archived' item
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: topButtonContent.elementAt(_topButtonIndex),
            ),
          ),
        ],
      ),
      const Center(
        child: Text('Settings', // Text for Settings tab
            style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    ];

    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 24, 23, 23), // Background color for scaffold
      appBar: AppBar(
        backgroundColor:
            Color.fromARGB(255, 24, 23, 23), // Background color for app bar
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                  Icons.more_horiz), // Icon for leading (left) button
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5, top: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                  Icons.camera_alt_rounded), // Icon for camera button
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle), // Icon for add circle button
              color: Colors.green[700],
            ),
          ),
        ],
      ),
      body: bottomNavContent.elementAt(
          _selectedIndex), // Body content based on selected bottom navigation item
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors
              .grey[900], // Setting canvas color for bottom navigation bar
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons
                  .mark_chat_unread_outlined), // Icon for Updates bottom navigation item
              label: 'Updates', // Label for Updates bottom navigation item
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.call_sharp), // Icon for Calls bottom navigation item
              label: 'Calls', // Label for Calls bottom navigation item
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons
                  .people_outline), // Icon for Communities bottom navigation item
              label:
                  'Communities', // Label for Communities bottom navigation item
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.chat_bubble), // Icon for Chats bottom navigation item
              label: 'Chats', // Label for Chats bottom navigation item
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons
                  .settings_outlined), // Icon for Settings bottom navigation item
              label: 'Settings', // Label for Settings bottom navigation item
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onBottomNavItemTapped,
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
