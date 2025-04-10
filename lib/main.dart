import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Notebook App',style: TextStyle(fontSize: 25),),centerTitle: true,backgroundColor: Colors.blue.shade200,),
        drawer: Drawer(
          child:Column(children: [
            DrawerHeader(child:CircleAvatar(radius: 30,)),
            ListTile(onTap:(){},leading:Icon(Icons.home),title: Text('Home'),),
            ListTile(onTap:(){},leading:Icon(Icons.person),title: Text('Profile'),),
            ListTile(onTap:(){},leading:Icon(Icons.settings),title: Text('Settings'),),
            ListTile(onTap:(){},leading:Icon(Icons.logout),title: Text('Logout'),),
          ],),
        ),
      ),
    );
  }
}