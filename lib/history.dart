

import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool isallClicked = false;
  bool iscompletedClicked = false;
  bool iscanceledClicked=false;

  void handleAllClick() {
    setState(() {
    isallClicked = true;
    iscompletedClicked   = false;
    iscanceledClicked=false;
    });
  }

  void handlecompleteClick() {
    setState(() {
      isallClicked  = false;
      iscompletedClicked = true;
      iscanceledClicked=false;
    });
  }

  void handlecancelClick(){
  setState(() {
    isallClicked = false;
    iscompletedClicked = false;
    iscanceledClicked = true;
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
          'Booking History',
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w900,
              fontSize: 20),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.blue.shade800,
            size: 26,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.040,
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
                  onTap: handleAllClick,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.039,
                    width: MediaQuery.of(context).size.width * 0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: isallClicked
                            ? Colors.blue.shade800
                            : Colors.blue.shade100.withOpacity(0.40)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.all_inclusive,
                            size: 20,
                            color: isallClicked
                                ? Colors.white
                                : Colors.black,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'All',
                            style: TextStyle(
                                color: isallClicked
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
                  onTap: handlecompleteClick,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.039,
                    width: MediaQuery.of(context).size.width * 0.28,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: iscompletedClicked
                            ? Colors.blue.shade800
                            : Colors.blue.shade100.withOpacity(0.40)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.046,
                            width: MediaQuery.of(context).size.width*0.046,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                                color: Colors.greenAccent,
                            ),
                            child: Icon(
                              Icons.done,
                              size: 16,
                              color: iscompletedClicked
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Completed',
                            style: TextStyle(
                                color: iscompletedClicked
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
                  onTap: handlecancelClick,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.039,
                    width: MediaQuery.of(context).size.width * 0.26,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: iscanceledClicked
                            ? Colors.blue.shade800
                            : Colors.blue.shade100.withOpacity(0.40)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.046,
                            width: MediaQuery.of(context).size.width*0.046,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                                color: Colors.redAccent,
                            ),
                            child: Icon(
                              Icons.close,
                              size: 16,
                              color: iscanceledClicked
                                  ? Colors.black
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Canceled',
                            style: TextStyle(
                                color: iscanceledClicked
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
            if (isallClicked)
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [Icon(
                        Icons.notifications_none_outlined,
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
                    const Text(
                      'No Booking requests right now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color:Color.fromARGB(255, 9, 96, 168)
                      ),
                    ),
                  ],
                ),
              ),
            if (iscompletedClicked)
             Padding(
                padding: const EdgeInsets.only(left:80,top:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Icon(
                        Icons.notifications_none_rounded,
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
                     const Text(
                      'No Completed requests right now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                         color:  Color.fromARGB(255, 9, 96, 168)
                      ),
                    ),
                  ],
                ),
              ),
              if (iscanceledClicked)
             Padding(
                padding: const EdgeInsets.only(left:80,top:30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children:[ Icon(
                        Icons.notifications_none_outlined,
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
                    const Text(
                      'No Canceled requests right now',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                       color: Color.fromARGB(255, 9, 96, 168)
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
