import 'package:flutter/material.dart';

// Define a class to represent each item
class ContainerItem {
  final String text;
  final Icon icon;
  

  ContainerItem({required this.text, required this.icon});
}

// Define the RoundCont widget
class RoundCont extends StatelessWidget {
  final List<ContainerItem> items;

  const RoundCont({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        ContainerItem item = entry.value;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent.withOpacity(0.5),
              child: Ink(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 60, 56, 56),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(index == 0 ? 10 : 0),
                    topRight: Radius.circular(index == 0 ? 10 : 0),
                    bottomLeft: Radius.circular(index == items.length - 1 ? 10 : 0),
                    bottomRight: Radius.circular(index == items.length - 1 ? 10 : 0),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 20),
                      child: item.icon,
                    ),
                    Text(
                      item.text,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

