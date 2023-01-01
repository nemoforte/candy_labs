import 'package:candy_labs/models/member.dart';
import 'package:flutter/material.dart';

class MemberListPosition extends StatelessWidget {
  final int index;

  final List<Member> members;

  final Color color;

  final IconData? iconData;

  final void Function()? onTap;

  const MemberListPosition({required this.index, required this.color, required this.iconData, required this.members, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                members[index].role,
                style: TextStyle(color: color, fontSize: 26),
              ),
            ),
            const SizedBox(width: 8),
            Icon(iconData, color: color, size: 24),
          ],
        ),
      ),
    );
  }
}
