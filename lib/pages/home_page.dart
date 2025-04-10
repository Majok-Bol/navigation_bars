import 'package:flutter/material.dart';
import 'package:navigation_bars/pages/followers.dart';
import 'package:navigation_bars/pages/likes.dart';
import 'package:navigation_bars/pages/ratings.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage>{
  //index to keep track of pages
  int _selectedIndex=0;
  //pages
  final _pages=[
    RatingsPage(),
    LikesPage(),
    FollowersPage(),
  ];
  //function to add functionality
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;

    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Welcome to Socialite',style: TextStyle(fontSize: 25),),centerTitle: true,backgroundColor: Colors.blue.shade200,),
        drawer: Drawer(
          backgroundColor: Colors.grey.shade100,
          child:Column(children: [
            DrawerHeader(child:Container(
              margin: EdgeInsets.all(10),

              padding:EdgeInsets.all(10),child: Expanded(child:Column(children: [
              CircleAvatar(radius: 30,backgroundColor: Colors.black,backgroundImage: AssetImage('assets/images/photo1.jpeg'),),
              SizedBox(height: 10,),
              Text('@bashbytes'),
            ],),),)),
            ListTile(onTap:(){

            },leading:Icon(Icons.home),title: Text('Home'),),
            ListTile(onTap:(){

            },leading:Icon(Icons.person),title: Text('Profile'),),
            ListTile(onTap:(){

            },leading:Icon(Icons.settings),title: Text('Settings'),),
            ListTile(onTap:(){

            },leading:Icon(Icons.logout),title: Text('Logout'),),
          ],),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
            onTap:navigateBottomBar,
            backgroundColor: Colors.grey.shade700,
            iconSize: 25,
            unselectedFontSize: 15,
            selectedFontSize: 15,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,

            items:[
              BottomNavigationBarItem(icon: Icon(Icons.star,color: Colors.green,),label:'Ratings'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.red,),label:'Likes'),
              BottomNavigationBarItem(icon: Icon(Icons.people,color: Colors.black,),label:'Followers'),
            ]),
      ),
    );
  }
}