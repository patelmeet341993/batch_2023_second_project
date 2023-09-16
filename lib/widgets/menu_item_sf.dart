import 'package:flutter/material.dart';

class MenuItemSF extends StatefulWidget {

  final IconData icon;
  final String label;
  const MenuItemSF({ this.label = "Hello",required this.icon});

  @override
  State<MenuItemSF> createState() => _MenuItemSFState();
}

class _MenuItemSFState extends State<MenuItemSF> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon),
            Text(widget.label),
          ],
        ),
      ),
    );
  }
}
