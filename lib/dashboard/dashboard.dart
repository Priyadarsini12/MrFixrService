import 'package:flutter/material.dart';
import 'package:mrfixr/dashboard/constants.dart';
import 'package:mrfixr/dashboard/tabs.dart';

import 'headings.dart';
import 'listitem.dart';

class DashBorad extends StatefulWidget {
  const DashBorad({super.key});

  @override
  State<DashBorad> createState() => _DashBoradState();
}

class _DashBoradState extends State<DashBorad> with TickerProviderStateMixin {
  TabController? controller;
  bool tab1 = true;
  bool tab2 = false;

  @override
  void initState() {
    super.initState();
    controller =
        TabController(length: 2, vsync: this, animationDuration: Duration.zero);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 2.5,
        titleSpacing: 0,
        backgroundColor: Colors.white.withOpacity(0.94),
        leading: Padding(
            padding: EdgeInsets.all(width * 0.025),
            child: Container(
              decoration: BoxDecoration(
                  color: headBack, borderRadius: BorderRadius.circular(4)),
            )),
        title: Text(
          'Mr. Fixr',
          style: TextStyle(color: backGr, fontWeight: FontWeight.bold),
        ),
        actions: [
          SizedBox(
            width: width * 0.12,
            child: Stack(children: [
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    color: backGr,
                    size: width * 0.06,
                  ),
                ),
              ),
              Positioned(
                  right: width * 0.01,
                  top: width * 0.01,
                  child: Container(
                    height: width * 0.05,
                    width: width * 0.05,
                    decoration: BoxDecoration(
                        color: backGr,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(
                        child: Text(
                      '0',
                      style: TextStyle(fontSize: width * 0.03),
                    )),
                  ))
            ]),
          ),
          SizedBox(
            width: width * 0.025,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Headings(text: 'Business Summery'),
            Container(
              margin: EdgeInsets.all(width * 0.03),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: width * 0.455,
                        height: height * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.green.shade500,
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.only(
                            left: width * 0.035, right: width * 0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '12,827.49 \$',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset(
                                  'assets/icons/increasing.png',
                                  height: width * 0.085,
                                  width: width * 0.085,
                                  color: Colors.white38,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: width * 0.01,
                            ),
                            Text(
                              'Total Earnings',
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.04),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
                        width: width * 0.455,
                        height: height * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade600,
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.only(
                            left: width * 0.035, right: width * 0.025),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '22',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset(
                                  'assets/icons/repairing-service.png',
                                  height: width * 0.065,
                                  width: width * 0.065,
                                  color: Colors.white38,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: width * 0.01,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Subscribed',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.04),
                                ),
                                Text(
                                  'Sub Categories',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.04),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: width * 0.03,
                  ),
                  Container(
                    width: width * 0.95,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade700,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.only(
                        left: width * 0.035, right: width * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            Text(
                              'Total Servicemen',
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.04),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/icons/trusted-friends.png',
                          height: width * 0.08,
                          width: width * 0.08,
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.03,
                  ),
                  Container(
                    width: width * 0.95,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.only(
                        left: width * 0.035, right: width * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            Text(
                              'Total Booking Served',
                              style: TextStyle(
                                  color: Colors.white, fontSize: width * 0.04),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/icons/calendar.png',
                          height: width * 0.08,
                          width: width * 0.08,
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const LogoHeadings(
                logo: 'assets/icons/increase.png', text: 'Earning Statistics'),
            Container(
              margin: EdgeInsets.only(
                  top: width * 0.03,
                  right: width * 0.02,
                  bottom: width * 0.03,
                  left: width * 0.02),
              height: height * 0.4,
              width: width,
              child: DefaultTabController(
                length: 2,
                child: Column(children: [
                  SizedBox(
                    height: width * 0.08,
                    child: TabBar(
                      controller: controller,
                      indicatorWeight: 0.0001,
                      isScrollable: true,
                      automaticIndicatorColorAdjustment: false,
                      labelPadding: EdgeInsets.only(
                          left: width * 0.02, right: width * 0.02),
                      labelStyle: TextStyle(
                          fontSize: width * 0.035, fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(
                          fontSize: width * 0.035, fontWeight: FontWeight.bold),
                      onTap: (value) {
                        if (value == 0) {
                          setState(() {
                            tab1 = true;
                            tab2 = false;
                          });
                        }
                        if (value == 1) {
                          setState(() {
                            tab1 = false;
                            tab2 = true;
                          });
                        }
                      },
                      tabs: [
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.all(width * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: tab1
                                ? Colors.white.withOpacity(0.94)
                                : Colors.grey.shade200,
                            boxShadow: tab1
                                ? [
                                    BoxShadow(
                                        color: Colors.grey.shade500,
                                        blurRadius: 1,
                                        spreadRadius: 0.4)
                                  ]
                                : [],
                          ),
                          child: Center(
                              child: Text(
                            'Monthly',
                            style: TextStyle(
                                color: tab1
                                    ? Colors.blue.shade700
                                    : Colors.grey.shade500),
                          )),
                        ),
                        Container(
                          width: width * 0.2,
                          padding: EdgeInsets.all(width * 0.02),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: tab2
                                ? Colors.white.withOpacity(0.94)
                                : Colors.grey.shade200,
                            boxShadow: tab2
                                ? [
                                    BoxShadow(
                                        color: Colors.grey.shade500,
                                        blurRadius: 1,
                                        spreadRadius: 0.4)
                                  ]
                                : [],
                          ),
                          child: Center(
                              child: Text(
                            'Yearly',
                            style: TextStyle(
                                color: tab2
                                    ? Colors.blue.shade700
                                    : Colors.grey.shade500),
                          )),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                      child: TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: controller,
                          children: const [TabBar1(), TabBar2()])),
                ]),
              ),
            ),
            const LogoHeadings(
                text: 'Recent Booking Activities',
                logo: 'assets/icons/user.png'),
            SizedBox(
              height: height * 0.59,
              child: Column(
                children: [
                  Expanded(
                    child: recentBookingAct(height, width),
                  )
                ],
              ),
            ),
            const LogoHeadings2(
                text: 'My Subscriptions', logo: 'assets/icons/user.png'),
            Container(
              height: width * 0.3,
              color: headBack,
              child: Row(
                children: [
                  Expanded(
                    child: mySubsription(height, width),
                  ),
                ],
              ),
            ),
            const LogoHeadings2(
                text: 'Serviceman List', logo: 'assets/icons/user.png'),
            Container(
              height: height * 0.45,
              color: headBack,
              child: Padding(
                padding: EdgeInsets.only(
                  left: width * 0.018,
                  right: width * 0.018,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: serviceManList(height, width),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
