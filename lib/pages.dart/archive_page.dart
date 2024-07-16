import 'package:flutter/material.dart';

class ArchivePage extends StatelessWidget {
  const ArchivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 23, 23),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 23, 23),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Archived',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.white,fontSize: 18), 
                )),
          )
        ],
      ),
      body: Center(
        child: Text('This is the second screen'),
      ),
    );
  }
}
