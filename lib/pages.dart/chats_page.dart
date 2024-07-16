import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:whatsapp/components/add_user_dialog.dart';
import 'package:whatsapp/pages.dart/archive_page.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  // Text controller
  final _controller = TextEditingController();

  int _topButtonIndex = 0; // Index for top buttons

  void _onTopButtonPressed(int index) {
    setState(() {
      _topButtonIndex = index; // Method to handle top button taps
    });
  }

  // Save user
  void saveUser() {
    setState(() {
      _users.add(_controller.text);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // Add a new user
  void addNewUser() {
    showDialog(
      context: context,
      builder: (context) {
        return userDialog(
          controller: _controller,
          onSave: saveUser,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  final List<String> _users = [
    'user 1',
    'user 2',
    'user 3',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> topButtonContent = <Widget>[
      ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          return Slidable(
            key: ValueKey(_users[index]),
            startActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  icon: Icons.mark_unread_chat_alt_rounded,
                  label: 'Unread',
                ),
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  icon: Icons.push_pin_rounded,
                  label: 'Pin',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height *
                              0.35, //Height of the modal bottom sheet
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Name'),
                              ),
                              ListTile(
                                leading: Icon(Icons.abc),
                                title: Text('Button 1'),
                                onTap: () {
                                  Navigator.pop(context); // Close bottom sheet
                                },
                              ),
                              ListTile(
                                leading: Icon(Icons.abc),
                                title: Text('Button 2'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  icon: Icons.more_horiz,
                  label: 'More',
                ),
                SlidableAction(
                  onPressed: (context) {},
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black,
                  icon: Icons.archive_outlined,
                  label: 'Archive',
                )
              ],
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.9,
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.account_circle_rounded,
                        color: Colors.grey,
                        size: 65,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _users[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Example message...',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'No unread chats',
            style: TextStyle(color: Colors.grey[400]),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () =>
                _onTopButtonPressed(0), // same method as the 'All' button
            child: Text(
              'View all chats',
              style: TextStyle(
                color: Colors.green[400],
              ),
            ),
          ),
        ],
      ),
      const Text(
        'You aren\'t in any groups',
        style: TextStyle(color: Colors.grey),
      ),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 24, 23, 23), // background color for scaffold
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            255, 24, 23, 23), // background color for app bar
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
      floatingActionButton: FloatingActionButton(
        onPressed: addNewUser,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10.0, left: 20),
            child: Text(
              'Chats',
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
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 12.5),
                        hintText: 'Search',
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
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _topButtonIndex == 0
                        ? const Color.fromARGB(
                            255, 4, 66, 26) // button color for 'All' button
                        : Colors.grey[850],
                    foregroundColor:
                        _topButtonIndex == 0 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () => _onTopButtonPressed(0),
                  child: const Text('All'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _topButtonIndex == 1
                        ? const Color.fromARGB(
                            255, 4, 66, 26) // button color for 'Unread' button
                        : Colors.grey[850],
                    foregroundColor:
                        _topButtonIndex == 1 ? Colors.white : Colors.grey,
                  ),
                  onPressed: () => _onTopButtonPressed(1),
                  child: const Text('Unread'),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _topButtonIndex == 2
                      ? const Color.fromARGB(
                          255, 4, 66, 26) // button color for 'Groups' button
                      : Colors.grey[850],
                  foregroundColor:
                      _topButtonIndex == 2 ? Colors.white : Colors.grey,
                ),
                onPressed: () => _onTopButtonPressed(2),
                child: const Text('Groups'),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ArchivePage(),
                    ),
                  );
                },
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
                          Icons.archive_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Archived',
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
    );
  }
}
