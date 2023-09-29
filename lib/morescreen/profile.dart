
import 'package:day_night_switch/day_night_switch.dart';
import 'package:flutter/material.dart';


import 'package:mrfixr/morescreen/editprofile.dart';
import 'package:mrfixr/notification.dart';
import 'package:mrfixr/theme.dart';
import 'package:provider/provider.dart';


class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  
  @override
  Widget build(BuildContext context) {
      final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
        elevation: 2.5,
        titleSpacing: 0,
        //backgroundColor: Colors.white.withOpacity(0.94),
       // backgroundColor: themeProvider.themeData.appBarTheme.backgroundColor,

        leading: Padding(
          padding:
              EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
          child: IconButton(onPressed: (){},
           icon: Icon(Icons.arrow_back_ios,
           color: Colors.blue.shade800,
           size: 17,
           ))
        ),
        title: Text(
          'My Profile',
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w900,
              fontSize: 17),
        ),
        ),
        body:SingleChildScrollView(
          child: Container(
             color: Colors.grey.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.grey),
                             shape: BoxShape.circle,
                             image: const DecorationImage(
                              image: AssetImage('assets/aaron-doucett-EKAb601Q4Bo-unsplash.jpg'),
                              fit: BoxFit.cover)
                            ),
                        ),
                      ]
                    ),
                  ),
                    const SizedBox(height:20),
                        Text('Rakesh AC',
                        style: TextStyle(
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left:20,right:10,top:20 ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                                  Column(
                                    children: [
                                      Text('0',
                                      style:TextStyle(fontWeight: FontWeight.bold) ,),
                                      SizedBox(height: 7,),
                                 Text('Day since'),
                                  SizedBox(height: 2,),
                                  Text('Joined')
                              ],
                              ),
                               Column(
                                    children: [
                                      Text('0',
                                      style:TextStyle(fontWeight: FontWeight.bold) ),
                                        SizedBox(height: 7,),
                                 Text('Booking'),
                                  SizedBox(height: 2,),
                                  Text('Completed')
                               ],
                               ),
                                 Column(
                                    children: [
                                      Text('0',
                                      style:TextStyle(fontWeight: FontWeight.bold) ),
                                        SizedBox(height: 7,),
                                 Text('Total Assigned'),
                                  SizedBox(height: 2,),
                                  Text('Booking')
                                   ],
                                   )
                                     ]
                                    ),
                                   ) ,
                                   const SizedBox(height: 25,),
                                   Container(
                                    height: MediaQuery.of(context).size.height*0.08,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      //color: Colors.white.withOpacity(0.94)
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                     children: [
                                       Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Row(
                                          children: [
                                             Image.asset('assets/white-balance.png',
                                            height: MediaQuery.of(context).size.height*0.05,
                                            width: MediaQuery.of(context).size.width*0.05,
                                         ),
                                         const SizedBox(width: 10,),
                                        const Text('Dark mode'),
                                          ]
                                        ),
                                      ),
                                     // Padding(
                                      //  padding: const EdgeInsets.only(left:40,right:0),
                                       // child: 
                                        Align(
                                          alignment: Alignment.centerRight,
                                    child: Transform.scale(
                                      scale: 0.38,
                                      child: DayNightSwitch(
                                      value: themeProvider.isDarkMode,
                                      onChanged: (value) {
                                      themeProvider.toggleTheme();
                                              },
                                         moonImage: const AssetImage('assets/night.png',
                                         ), 
                                        sunImage: const AssetImage('assets/brightness.png'),     
                                             ),
                                            ),
                                          ),
                                         ]
                                      )
                                   ),
                            
                                  const SizedBox(height: 10,),
                                   Container(
                                    height: MediaQuery.of(context).size.height*0.08,
                                    width: MediaQuery.of(context).size.width,
                                    decoration:  BoxDecoration(
                                   // color: Colors.white.withOpacity(0.94)
                                    color: Theme.of(context).primaryColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                     children: [
                                       Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/edit.png',
                                            height: MediaQuery.of(context).size.height*0.05,
                                            width: MediaQuery.of(context).size.width*0.05,
                                         ),
                                         const SizedBox(width: 10,),
                                        const Text('Edit Profile'),
                                          ]
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                      child: IconButton(onPressed: (){
                                        Navigator.push(context,
                                       MaterialPageRoute(builder: (context)=>const Editprofile()));
                                      },
                                       icon: Icon(Icons.arrow_forward_ios,size: 20,
                                       color: Colors.blue.shade800),)
                                      )
                                     ],
                                    )
                                   ),
                                 const SizedBox(height: 10,),
                                   Container(
                                    height: MediaQuery.of(context).size.height*0.08,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      // color: Colors.white.withOpacity(0.94)
                                       color: Theme.of(context).primaryColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                     children: [
                                       Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/notification.png',
                                            height: MediaQuery.of(context).size.height*0.05,
                                            width: MediaQuery.of(context).size.width*0.05,
                                         ),
                                         const SizedBox(width: 10,),
                                          const Text('Notification'),
                                          ]
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                      child: IconButton(onPressed: (){
                                        Navigator.push(context,
                                       MaterialPageRoute(builder: (context)=>const Notificationpage()));
                                      },
                                       icon:  Icon(Icons.arrow_forward_ios,size: 20,
                                       color: Colors.blue.shade800),)
                                      )
                                     ],
                                    )
                                   ),
                                  const SizedBox(height: 10,),
                                   Container(
                                    height: MediaQuery.of(context).size.height*0.08,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                     //color: Colors.white.withOpacity(0.94)
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                     children: [
                                       Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/team.png',
                                            height: MediaQuery.of(context).size.height*0.05,
                                            width: MediaQuery.of(context).size.width*0.05,
                                         ),
                                         const SizedBox(width: 10,),

                                        const Text('Terms and Conditions'),
                                          ]
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                      child: IconButton(onPressed: (){},
                                       icon:  Icon(Icons.arrow_forward_ios,size: 20,
                                       color: Colors.blue.shade800),)
                                      )
                                     ],
                                    )
                                   ),
                                  const SizedBox(height: 10,),
                                   Container(
                                    height: MediaQuery.of(context).size.height*0.08,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                     //color: Colors.white.withOpacity(0.94)
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                     children: [
                                       Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Row(
                                          children: [
                                            Image.asset('assets/compliant.png',
                                            height: MediaQuery.of(context).size.height*0.05,
                                            width: MediaQuery.of(context).size.width*0.05,
                                         ),
                                         const SizedBox(width: 10,),
                                        const Text('Privacy Policy'),
                                          ]
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                      child: IconButton(onPressed: (){},
                                       icon:  Icon(Icons.arrow_forward_ios,size: 20,
                                       color: Colors.blue.shade800,),
                                       )
                                      )
                                     ],
                                    )
                                   ),
                                    const SizedBox(height: 15,),
                                   Container(
                                    height: MediaQuery.of(context).size.height*0.08,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                     //color: Colors.white.withOpacity(0.94)
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                     children: [
                                       Padding(
                                        padding: const EdgeInsets.all(14.0),
                                        child: Row(
                                          children: [
                                           Image.asset('assets/logout.png',
                                            height: MediaQuery.of(context).size.height*0.05,
                                            width: MediaQuery.of(context).size.width*0.05,
                                         ),
                                         const SizedBox(width: 10,),
                                        const Text('Logout'),
                                          ]
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                      child: IconButton(onPressed: (){
                                        showLogoutDialog(context);
                                      },
                                       icon: Icon(Icons.arrow_forward_ios,size: 20,
                                       color: Colors.blue.shade800,),)
                                      )
                                     ],
                                    )
                                  )
                                  ]
                             )
                          ),
                       ),
                     )
                );
                }
    void showLogoutDialog(BuildContext context) {
    showDialog(
  context: context,
  builder: (_) => AlertDialog(
  shape: const RoundedRectangleBorder(
    borderRadius:
      BorderRadius.all(
        Radius.circular(10.0))),
       content: Builder(
      builder: (context) {                             
     return SizedBox(
          height: MediaQuery.of(context).size.height*0.26,
          width: MediaQuery.of(context).size.height*0.60,
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/logout.png',
              height: MediaQuery.of(context).size.height*0.12,
              width: MediaQuery.of(context).size.width*0.12,
              ),
              const Text('Are you sure to logout',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              const SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                  height: MediaQuery.of(context).size.height*0.045,
                  width: MediaQuery.of(context).size.width*0.25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); 
                    },
                    child: const Text("No",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
            ),
    
            //SizedBox(width:23),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.045,
              width: MediaQuery.of(context).size.width*0.25,
        
              child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: const Text("Yes",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),

            ],
          ),
         ]
        )
      );
      },
    ),
  )
 );
 }
      
}





