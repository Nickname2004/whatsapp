import 'package:flutter/material.dart';
import 'package:whatsapp/components/round_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ContainerItem> Items_list = [
      ContainerItem(
          text: 'Broadcast lists',
          icon: const Icon(Icons.speaker_phone_rounded, color: Colors.white)),
      ContainerItem(
          text: 'Starred messages',
          icon: const Icon(Icons.star_border, color: Colors.white)),
      ContainerItem(
          text: 'Linked devices',
          icon: const Icon(Icons.laptop, color: Colors.white)),
    ];

    List<ContainerItem> Items_list2 = [
      ContainerItem(
          text: 'Account',
          icon: const Icon(Icons.vpn_key_outlined, color: Colors.white)),
      ContainerItem(
          text: 'Privacy',
          icon: const Icon(Icons.lock_outlined, color: Colors.white)),
      ContainerItem(
          text: 'Chats',
          icon: const Icon(Icons.chat_bubble_outline_outlined,
              color: Colors.white)),
      ContainerItem(
          text: 'Notifications',
          icon: const Icon(Icons.notifications_active_outlined,
              color: Colors.white)),
      ContainerItem(
          text: 'Storage and data',
          icon: const Icon(Icons.subdirectory_arrow_right_outlined,
              color: Colors.white)),
    ];

    List<ContainerItem> Items_list3 = [
      ContainerItem(
          text: 'Help',
          icon: const Icon(Icons.help_rounded, color: Colors.white)),
      ContainerItem(
          text: 'Tell a friend',
          icon:
              const Icon(Icons.favorite_border_outlined, color: Colors.white)),
    ];

    List<ContainerItem> Items_list4 = [
      ContainerItem(
          text: 'Open Instagram',
          icon: const Icon(Icons.camera_alt_outlined, color: Colors.white)),
      ContainerItem(
          text: 'Open Facebook',
          icon: const Icon(Icons.facebook, color: Colors.white)),
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                'Settings',
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
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 200,
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
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.transparent.withOpacity(0.5),
                      child: Ink(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 60, 56, 56),
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 0.9)),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Container(
                          height: 65,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      'User Name',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Bio Example...',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.qr_code,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.transparent.withOpacity(0.5),
                      child: Ink(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 60, 56, 56),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 15, right: 20),
                                    child: Icon(Icons.face_rounded,
                                        color: Colors.white),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Avatar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Icon(Icons.arrow_forward_ios,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            RoundCont(items: Items_list),
            const SizedBox(
              height: 40,
            ),
            RoundCont(items: Items_list2),
            const SizedBox(
              height: 40,
            ),
            RoundCont(items: Items_list3),
            const SizedBox(
              height: 40,
            ),
            RoundCont(items: Items_list4)
          ],
        ),
      ),
    );
  }
}
