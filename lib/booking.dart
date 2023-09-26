
import 'package:flutter/material.dart';
import 'package:mrfixr/notification.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  bool isAcceptedClicked = false;
  bool isOngoingClicked = false;

  void handleAcceptedClick() {
    setState(() {
      isAcceptedClicked = true;
      isOngoingClicked = false;
    });
  }

  void handleOngoingClick() {
    setState(() {
      isAcceptedClicked = false;
      isOngoingClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.5,
        titleSpacing: 0,
        backgroundColor: Colors.white.withOpacity(0.94),
        leading: Padding(
          padding:
              EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade500,
                borderRadius: BorderRadius.circular(4)),
          ),
        ),
        title: Text(
          'Booking List',
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w900,
              fontSize: 20),
        ),
        actions: [
             SizedBox(
            //color: Colors.amberAccent,
            width:MediaQuery.of(context).size.width * 0.12,
            child: Stack(
              children: [
                Center(
                  child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const Notificationpage()));
                  },
                  child: Icon(
                    Icons.notifications,
                    color:Colors.blue.shade800,
                    size: MediaQuery.of(context).size.width*0.06,
                  ),             
                 ),
                ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0,
                top: MediaQuery.of(context).size.width * 0.02,
                left:MediaQuery.of(context).size.width*0.07 ,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.024,
                  width: MediaQuery.of(context).size.width * 0.058,              
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(100)),
                  child: Center(child: Text('0',
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.034),
                  )),
                  //borderRadius: BorderRadius.circular(100),
                ))
              ]
           ),
             ),
             SizedBox(
              width: MediaQuery.of(context).size.width*0.025,
             )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: handleAcceptedClick,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.039,
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: isAcceptedClicked
                            ? Colors.blue.shade800
                            : Colors.grey.shade400.withOpacity(0.30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.verified,
                            size: 20,
                            color: isAcceptedClicked
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Accepted',
                            style: TextStyle(
                                color: isAcceptedClicked
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                GestureDetector(
                  onTap: handleOngoingClick,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.039,
                    width: MediaQuery.of(context).size.width * 0.23,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: isOngoingClicked
                            ? Colors.blue.shade800
                            : Colors.grey.shade400.withOpacity(0.30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            size: 20,
                            color: isOngoingClicked
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Ongoing',
                            style: TextStyle(
                                color: isOngoingClicked
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (isAcceptedClicked)
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children:[ Icon(
                        Icons.notifications_none,
                        size: 80,
                        color: Colors.grey.shade500,
                      ),
                         Positioned(
                           right:20,
                               top:17,
                             child: Container(
                                   width: 16,
                                     height: 16,
                                    decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                   color: Colors.grey,
                                  ),
                                ),
                              ),
                               ]
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'No accepted requests right now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue.shade800
                      ),
                    ),
                  ],
                ),
              ),
            if (isOngoingClicked)
             Padding(
                padding: const EdgeInsets.only(left:80,top:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Icon(
                        Icons.notifications_none,
                        size: 80,
                        color: Colors.grey.shade500,
                      ),
                     Positioned(
                           right:20,
                               top:17,
                             child: Container(
                                   width: 16,
                                     height: 16,
                                    decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                   color: Colors.grey,
                                  ),
                                ),
                              ),
                      ]
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                     Text(
                      'No ongoing requests right now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue.shade800
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
