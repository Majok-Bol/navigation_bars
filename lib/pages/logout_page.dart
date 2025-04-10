import 'package:flutter/material.dart';
class LogoutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('Logged out successfully'),),
    );
  }
}