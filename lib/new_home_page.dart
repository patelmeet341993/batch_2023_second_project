import 'package:flutter/material.dart';
import 'package:second_project/widgets/menu_item.dart';
import 'package:second_project/widgets/menu_item_sf.dart';

class NewHomePage extends StatefulWidget {
  const NewHomePage({super.key});

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  String title = "Home";
  Color def_clr = Colors.black;
  Color act_clr = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.maxFinite,
            color: Colors.grey,
            child: Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        getMenuSL(),
        Container(height: 3,width: double.maxFinite,color: Colors.black,),
        getMenuSF()
      ],
    );
  }

  Widget getMenuSF() {
    return Container(
      width: double.maxFinite,
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MenuItemSF(icon: Icons.dashboard),

          MenuItemSF(
            icon: Icons.search,
            label: "Search",
          ),
          MenuItemSF(
            icon: Icons.ac_unit,
            label: "Search",
          ),
          MenuItemSF(
            icon: Icons.access_alarm,
            label: "Search",
          ),
          MenuItemSF(
            icon: Icons.search,
            label: "Search",
          ),

          // getItem("Home",Icons.home),
          // getItem("Search",Icons.search,clickFun:(){
          //
          //   print("extra feature");
          //
          // } ),
          // getItem("Dashboard",Icons.dashboard,clickFun: (){
          //   print("meet");
          // }),
          // getItem("Profile",Icons.supervised_user_circle_rounded),
          // getItem("Feed",Icons.feed),
        ],
      ),
    );
  }
  Widget getMenuSL() {
    return Container(
      width: double.maxFinite,
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MenuItemSL(icon: Icons.dashboard),
          MenuItemSL(
            icon: Icons.search,
            label: "Search",
          ),
          MenuItemSL(
            icon: Icons.search,
            label: "Search",
          ),
          MenuItemSL(
            icon: Icons.search,
            label: "Search",
          ),
          MenuItemSL(
            icon: Icons.search,
            label: "Search",
          ),

          // getItem("Home",Icons.home),
          // getItem("Search",Icons.search,clickFun:(){
          //
          //   print("extra feature");
          //
          // } ),
          // getItem("Dashboard",Icons.dashboard,clickFun: (){
          //   print("meet");
          // }),
          // getItem("Profile",Icons.supervised_user_circle_rounded),
          // getItem("Feed",Icons.feed),
        ],
      ),
    );
  }
}
