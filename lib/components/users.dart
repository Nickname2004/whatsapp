import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Users extends StatelessWidget {
  Users({
    super.key,
    required this.child,
    required this.deleteFunction,
    // required this.imagepath,
  });
  final String child;
  Function(BuildContext)? deleteFunction;

  // final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {},
        splashColor: Colors.transparent.withOpacity(0.5),
        child: Ink(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Slidable(
            endActionPane: ActionPane(
              motion: StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: deleteFunction,
                  icon: Icons.delete,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Center(
                child: Text(
                  child,
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
