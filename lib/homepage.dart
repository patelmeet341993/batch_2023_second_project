import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  String title="Home";
  Color def_clr=Colors.black;
  Color act_clr=Colors.teal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
      ),
    );
  }
  
  
  Widget getBody(){
    return Column(
      children: [

        Expanded(
          child: Container(
            width: double.maxFinite,
            color: Colors.grey,
            child: Center(child: Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          ),
        ),

        getMenu(),



      ],
    );
  }

  Widget getMenu(){
    return  Container(
      width: double.maxFinite,
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          getItem("Home",Icons.home),
          getItem("Search",Icons.search,clickFun:(){

            print("extra feature");

          } ),
          getItem("Dashboard",Icons.dashboard,clickFun: (){
            print("meet");
          }),
          getItem("Profile",Icons.supervised_user_circle_rounded),
          getItem("Feed",Icons.feed),

        ],
      ),
    );
  }

  Widget getItem(String label,IconData icon,{Function? clickFun}){
    return  Expanded(
      child: InkWell(
        onTap: (){

          if(clickFun!=null)
            {clickFun();}

          title=label;
          setState(() {

          });

          print("Clicked $label");

        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color: title==label?act_clr:def_clr,),
              Text(label,style: TextStyle(color: title==label?act_clr:def_clr),),
            ],
          ),
        ),
      ),
    );
  }
  
}
