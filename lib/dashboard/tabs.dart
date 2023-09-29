import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
List<String> yearList = ['2019', '2020', '2021', '2022', '2023'];
List<String> monthList = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
class TabBar1 extends StatefulWidget {
  const TabBar1({super.key});

  @override
  State<TabBar1> createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  String dropdownValue2 = yearList.last;
  String dropdownValue3 = monthList.last;
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
  return Column(
    //mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        height: width * 0.03,
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: width * 0.07,
            width: width * 0.35,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(color: Colors.green.shade300, spreadRadius: 0.5),
                ]),
            padding: EdgeInsets.only(
                top: width * 0.02,
                bottom: width * 0.02,
                left: width * 0.03,
                right: width * 0.03),
            child: Row(
              children: [
                Text(
                  'Year:',
                  style: TextStyle(
                      fontSize: width * 0.03,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * 0.21,
                  child: DropdownButton<String>(
                      value: dropdownValue2,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      iconDisabledColor: Colors.grey.shade500,
                      iconEnabledColor: Colors.grey.shade500,
                      elevation: 0,
                      iconSize: width * 0.04,   
                      isExpanded: true,
                      isDense: true,
                      padding: EdgeInsets.only(left: width * 0.02),
                      underline: Container(
                        height: 0,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue2 = value!;
                        });
                      },
                      items: yearList.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(value: value,child: Text(value, style: TextStyle(color: Colors.grey.shade500, fontSize: width * 0.03, fontWeight: FontWeight.bold),));
                      }).toList(),
                    ),
                )
              ],
            ),
          ),
          SizedBox(
            width: width * 0.04,
          ),
          Container(
            height: width * 0.07,
            width: width * 0.35,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(color: Colors.green.shade300, spreadRadius: 0.5)
                ]),
            padding: EdgeInsets.only(
                top: width * 0.02,
                bottom: width * 0.02,
                left: width * 0.03,
                right: width * 0.02),
            child: Row(
              children: [
                Text(
                  'Month:',
                  style: TextStyle(
                      fontSize: width * 0.03,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * 0.2,
                  child: DropdownButton<String>(
                      value: dropdownValue3,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      iconDisabledColor: Colors.grey.shade500,
                      iconEnabledColor: Colors.grey.shade500,
                      elevation: 0,
                      iconSize: width * 0.04,   
                      isExpanded: true,
                      isDense: true,
                      padding: EdgeInsets.only(left: width * 0.01),
                      underline: Container(
                        height: 0,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue3 = value!;
                        });
                      },
                      items: monthList.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(value: value,child: Text(value, style: TextStyle(color: Colors.grey.shade500, fontSize: width * 0.03, fontWeight: FontWeight.bold),));
                      }).toList(),
                    ),
                )
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: width * 0.08,
      ),
      Container(
        padding: EdgeInsets.all(width * 0.03),
        height: height * 0.245,
        width: width,
        child: LineChart(LineChartData(
            lineBarsData: [
              LineChartBarData(
                dotData: const FlDotData(
                  show: false
                ),
                //show: false,
                show: true,
                //barWidth: 0.5,
                gradient: LinearGradient(colors: [
                  Colors.red.shade400, Colors.blue.shade700
                ]),
                spots: [const FlSpot(0, 0),
                const FlSpot(10, 0)],
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(colors: [
                  Colors.red.shade400.withOpacity(0.3), Colors.blue.shade700.withOpacity(0.3)
                ])
                )
                ),
            ],
            backgroundColor: Colors.transparent,
            minX: 0,
            maxX: 10,
            // minY: 0,
            // maxY: 10,
            //baselineY: 0,
  
            gridData: FlGridData(
              drawHorizontalLine: false,
              verticalInterval: 1.67,
              getDrawingVerticalLine: (value) {
                return FlLine(
                    color: Colors.grey.shade400,
                    dashArray: [9, 6],
                    strokeWidth: 1.2);
              },
              //checkToShowVerticalLine: showAllGrids,
            ),
            titlesData: FlTitlesData(
                show: true,
                topTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                  showTitles: true,
                  //interval: 12,
                  getTitlesWidget: (value, meta) {
                    return const Text('0');
                  },
                )),
                rightTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(
                    // axisNameWidget: Text('mon'),
                    //axisNameSize: 12,
                    sideTitles: SideTitles(
                  interval: 1,
                  showTitles: true,
                  reservedSize: 20,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 1:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 2:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '6',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 3:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '9',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 4:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '12',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 5:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '15',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 6:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '18',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 7:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '21',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 8:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '24',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 9:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '27',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 10:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '30',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                    }
                    return const Text('');
                  },
                ))),
            borderData: FlBorderData(
                // show: false
                border: const Border(
                    bottom:
                        BorderSide(width: 1.7, color: Colors.black54))))),
      ),
      SizedBox(height: width * 0.015,),
      const Text('Total Earnings')
    ],
  );
}
}


class TabBar2 extends StatefulWidget {
  const TabBar2({super.key});

  @override
  State<TabBar2> createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  String dropdownValue = yearList.last;
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    
  return Column(
    children: [
      SizedBox(
        height: width * 0.03,
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: width * 0.07,
            width: width * 0.35,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(color: Colors.green.shade300, spreadRadius: 0.5),
                ]),
            padding: EdgeInsets.only(
                top: width * 0.02,
                bottom: width * 0.02,
                left: width * 0.03,
                right: width * 0.03),
            child: Row(
              children: [
                Text(
                  'Year:',
                  style: TextStyle(
                      fontSize: width * 0.03,
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * 0.21,
                  child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      iconDisabledColor: Colors.grey.shade500,
                      iconEnabledColor: Colors.grey.shade500,
                      elevation: 0,
                      iconSize: width * 0.04,                    
                      isExpanded: true,
                      isDense: true,
                      padding: EdgeInsets.only(left: width * 0.02),
                      underline: Container(
                        height: 0,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: yearList.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(value: value,child: Text(value, style: TextStyle(color: Colors.grey.shade500, fontSize: width * 0.03, fontWeight: FontWeight.bold),));
                      }).toList(),
                    ),
                )
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: width * 0.08,
      ),
      Container(
        padding: EdgeInsets.all(width * 0.03),
        height: height * 0.245,
        width: width,
        child: LineChart(LineChartData(
            lineBarsData: [
              
                LineChartBarData(
                dotData: const FlDotData(
                  show: false
                ),
                //show: false,
                show: true,
                //barWidth: 0.5,
                gradient: LinearGradient(colors: [
                  Colors.red.shade400, Colors.blue.shade700
                ]),
                spots: [const FlSpot(0, 0),
                const FlSpot(1, 1),
                const FlSpot(2, 0),
                const FlSpot(3, 5),
                const FlSpot(4, 0),
                const FlSpot(12, 0),
                ],
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(colors: [
                  Colors.red.shade400.withOpacity(0.3), Colors.blue.shade700.withOpacity(0.3)
                ])
                )
                ),
              
            ],
            backgroundColor: Colors.transparent,
            minX: 0,
            maxX: 12,
            minY: 0,
            maxY: 5,
            //baselineY: 0,

            gridData: FlGridData(
              drawHorizontalLine: false,
              verticalInterval: 2,
              getDrawingVerticalLine: (value) {
                return FlLine(
                    color: Colors.grey.shade400,
                    dashArray: [9, 6],
                    strokeWidth: 1.2);
              },
              //checkToShowVerticalLine: showAllGrids,
            ),
            titlesData: FlTitlesData(
                show: true,
                topTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      reservedSize: 24,
                  showTitles: true,
                  //interval: 12,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 1:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '2K',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.03),
                            ));
                      case 2:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '4K',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.03),
                            ));
                      case 3:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '6K',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.03),
                            ));
                      case 4:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '8K',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.03),
                            ));
                      case 5:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              '9.5K',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: width * 0.03),
                            ));
                    }
                    return const Text('0');
                  },
                )),
                rightTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(
                    // axisNameWidget: Text('mon'),
                    //axisNameSize: 12,
                    sideTitles: SideTitles(
                  interval: 1,
                  showTitles: true,
                  reservedSize: 20,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 1:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Jan',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 2:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Feb',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 3:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Mar',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 4:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Apr',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 5:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'May',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 6:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Jun',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 7:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Jul',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 8:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Aug',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 9:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Sep',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 10:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Oct',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 11:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Nov',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                      case 12:
                        return Container(
                            padding: EdgeInsets.only(top: width * 0.02),
                            child: Text(
                              'Dec',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: width * 0.03),
                            ));
                    }
                    return const Text('');
                  },
                ))),
            borderData: FlBorderData(
                // show: false
                border: const Border(
                    bottom:
                        BorderSide(width: 1.7, color: Colors.black54))))),
      ),
      SizedBox(height: width * 0.015,),
      const Text('Total Earnings')
    ],
  );
}
}

