import 'package:flutter/material.dart';
import 'package:whatsapp/components/stories_circ.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  final List<String> _users = [
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
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 23, 23),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 24, 23, 23),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz, // Icon for leading (left) button
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              'Updates',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
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
                    padding:  EdgeInsets.only(left: 10, right: 10),
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
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                StoriesCirc(
                  text: 'Guy 1',
                ),
                StoriesCirc(
                  text: 'Guy 2',
                ),
                StoriesCirc(
                  text: 'Guy 3',
                ),
                StoriesCirc(
                  text: 'Guy 4 ',
                ),
                StoriesCirc(
                  text: 'Guy 5',
                ),
                StoriesCirc(
                  text: 'Guy 6',
                ),
                StoriesCirc(
                  text: 'Guy 7',
                ),
                StoriesCirc(
                  text: 'Guy 8',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Channels',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      size: 30,
                      color: Colors.grey,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: _users.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent.withOpacity(0.5),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(),
                    alignment: Alignment.center,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.grey,
                            size: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            _users[index],
                            style: const TextStyle(
                              color: Colors.white,
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
          ),
          Divider( color: Colors.grey[600],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Find channels',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: InkWell(
                  onTap: () {},
                  splashColor: Colors
                      .transparent, // Remove ripple effect background color
                  highlightColor: Colors.transparent, // Remove highlight color
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
