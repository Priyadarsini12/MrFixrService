

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mrfixr/booking.dart';
import 'package:mrfixr/history.dart';
import 'package:mrfixr/morescreen.dart';

import 'dashboard.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>( 
    value: SystemUiOverlayStyle.dark,
    child:
    Scaffold(
      bottomNavigationBar: Container(color: Colors.blue.shade800,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          //iconSize: 20,
          //unselectedLabelStyle: TextStyle(color: Colors.grey),
          unselectedFontSize: 12,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade500,
          backgroundColor: Colors.blue.shade800,
          //fixedColor: Colors.blue.shade800,
          onTap: (val){
            setState(() {
              index = val;
            });
          },
          currentIndex: index,
          items: const [
          BottomNavigationBarItem(
            label: 'Dashboard',
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.dashboard_outlined)),
          BottomNavigationBarItem(
            label: 'Booking',
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.book_online)),
          BottomNavigationBarItem(
            label: 'History',
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.history)),
            BottomNavigationBarItem(
            label: 'More',
            backgroundColor: Colors.transparent,
            icon: Icon(Icons.menu)),
        ]),
      ),
      //extendBody: true,
      body: bodyContainer(),
    ));
  }
   Widget bodyContainer() {
    var pagesData = [
      const DashboardScreen(),
      const Booking(),
      const History(),
      const MoreScreen(),

      //const DashBorad(),
      //const Center(child: Text('2')),
      //const Center(child: Text('3')),
      //const Center(child: Text('4')),
    ];
    return SizedBox(
      //color: Colors.amber,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      //height: double.infinity,
      child: pagesData.elementAt(index),
    );
  }
}



