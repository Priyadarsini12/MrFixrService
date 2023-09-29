import 'package:flutter/material.dart';

import '../model/model1.dart';
import '../model/model2.dart';
import '../model/model3.dart';


Widget recentBookingAct(double height, double width) {
  return ListView.builder(
      itemCount: bookDetails.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: width * 0.045, right: width * 0.045),
            height: width * 0.26,
            decoration: BoxDecoration(
                border: (index != 4)
                    ? Border(
                        bottom:
                            BorderSide(color: Colors.grey.shade400, width: 0.5))
                    : const Border(bottom: BorderSide.none)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: width * 0.17,
                      width: width * 0.17,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/${bookDetails[index].img}')),
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(17)),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Booking# ${bookDetails[index].bookId}',
                          style: TextStyle(
                              fontSize: width * 0.04,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: width * 0.015,
                        ),
                        Text(
                          bookDetails[index].dateTime.toString(),
                          style: TextStyle(
                            fontSize: width * 0.031,
                            color: Colors.grey.shade600,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width * 0.17,
                      height: width * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Pending',
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: width * 0.03,
                              color: Colors.blue.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      });
}

Widget mySubsription(double height, double width) {
  return ListView.builder(
      // shrinkWrap: true,
      itemCount: subs.length,
      scrollDirection: Axis.horizontal,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
              top: width * 0.04, bottom: width * 0.04, left: width * 0.045),
          child: Container(
            //height: width * 0.1,
            width: width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.94),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.5,
                      blurRadius: 1.5)
                ]),

            child: Padding(
              padding: EdgeInsets.all(width * 0.022),
              child: Row(
                children: [
                  Container(
                    height: width * 0.18,
                    width: width * 0.18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/${subs[index].img}')),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(
                    width: width * 0.025,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width * 0.45,
                        //color: Colors.amberAccent,
                        child: Text(
                          subs[index].sName.toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700),
                        ),
                      ),
                      SizedBox(
                        height: width * 0.01,
                      ),
                      Text(
                        '${subs[index].service} Services',
                        style: TextStyle(
                            fontSize: width * 0.03,
                            color: Colors.grey.shade700),
                      ),
                      SizedBox(
                        height: width * 0.01,
                      ),
                      Text(
                        '${subs[index].booking} Booking Completed',
                        style: TextStyle(
                            fontSize: width * 0.03,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}

Widget serviceManList(double height, double width) {
  return GridView.builder(
      shrinkWrap: true,
      itemCount: serviceMan.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: width * 0.035,
          mainAxisExtent: height * 0.202),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: width * 0.018,
            right: width * 0.018,
          ),
          child: Container(
            // height: width * 0.18,
            // width: width * 0.18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white.withOpacity(0.94),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 0.5,
                      blurRadius: 1.5)
                ]),
            child: Center(
              child: SizedBox(
                // color: Colors.amberAccent,
                height: width * 0.35,
                width: width * 0.28,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: (serviceMan[index].img != null)
                          ? Image.asset(
                              'assets/images/${serviceMan[index].img}',
                              width: width * 0.16,
                              height: width * 0.16,
                              fit: BoxFit.cover,
                              scale: 0.2,
                              alignment: Alignment.topCenter,
                            )
                          : Image.asset(
                              'assets/images/SM-placeholder.png',
                              width: width * 0.16,
                              height: width * 0.16,
                              fit: BoxFit.cover,
                              scale: 0.2,
                              alignment: Alignment.topCenter,
                            ),
                    ),
                    SizedBox(
                      height: width * 0.03,
                    ),
                    Text(
                      serviceMan[index].sMan.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                    SizedBox(
                      height: width * 0.025,
                    ),
                    Text(
                      serviceMan[index].phone.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: width * 0.025,
                          //fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
