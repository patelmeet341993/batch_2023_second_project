import 'package:flutter/material.dart';

class MenuItemSL extends StatelessWidget {


  final IconData icon;
  final String label;


  const MenuItemSL({ this.label = "Hello",required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(label),
          ],
        ),
      ),
    );
  }
}
