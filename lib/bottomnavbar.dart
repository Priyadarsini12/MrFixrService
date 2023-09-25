/*import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() =>
      _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        // notchMargin: 0,
        color: const Color.fromARGB(255, 4, 106, 189),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => _onTabSelected(0),
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 6),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: _currentIndex == 0
                              ? Colors.white
                              : Colors.grey,
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: _currentIndex == 0
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.04,),
              Material(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(),
                ),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => _onTabSelected(1),
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.request_page_outlined,
                          color: _currentIndex == 1
                              ? Colors.white
                              : Colors.grey,
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          'Requests',
                          style: TextStyle(
                            color: _currentIndex == 1
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.04,),
              Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => _onTabSelected(2),
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.settings,
                          color: _currentIndex == 2
                              ? Colors.white
                              : Colors.grey,
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          'Services',
                          style: TextStyle(
                            color: _currentIndex == 2
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.04,),
              Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => _onTabSelected(3),
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6,right: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.menu,
                          color: _currentIndex == 3
                              ? Colors.white
                              : Colors.grey,
                        ),
                        const SizedBox(height: 2,),
                        Text(
                          'More',
                          style: TextStyle(
                            // fontSize: 15,
                            color: _currentIndex == 3
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
      extendBody: true,
      body: bodyContainer(),
    );
  }

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget bodyContainer() {
    var pagesData = [
     // const DashboardScreen(),
     // const RequestsScreen(),
      //const ServicesScreen(),
      //const MoreScreen(),

      const Text(
        "dashboard",
        style: TextStyle(color: Colors.white),
      ),
      const Text(
        "requests",
        style: TextStyle(color: Colors.white),
      ),
      const Text(
        "services",
        style: TextStyle(color: Colors.white),
      ),
      const Text(
        "more",
        style: TextStyle(color: Colors.white),
      ),
    ];
    return SizedBox(
      child: Center(child: pagesData.elementAt(_currentIndex))
    );
  }
}*/

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



