 import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        elevation: 0,
        title: Text('DashBoard',
        style: TextStyle(color:Colors.blue.shade800,
        fontWeight: FontWeight.bold),),
      ),

    );
  }
}