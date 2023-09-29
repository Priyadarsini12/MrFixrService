import 'package:flutter/material.dart';
import 'package:mrfixr/morescreen/profile.dart';
import 'bottomnavbar.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.5,
        titleSpacing: 0,
        //backgroundColor: Colors.white.withOpacity(0.94),
        leading: Padding(
          padding:
              EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
          child: IconButton(onPressed: (){
            Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const Profilepage()));
          },
           icon: Icon(Icons.arrow_back_ios,
           color: Colors.blue.shade800,
           size: 17,
           ))
        ),
        title: Text(
          'Notification',
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w900,
              fontSize: 17),
        ),
        ),
      body:Container(
      color: Colors.grey.withOpacity(0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('10 Oct,2022',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 17),),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.095,
             width: MediaQuery.of(context).size.width,
            // color: Colors.white.withOpacity(0.94),
              color: Theme.of(context).primaryColor,
             child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                children:[
                Padding(
                  padding: const EdgeInsets.only(left: 0,bottom: 23),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.087,
                    width: MediaQuery.of(context).size.width*0.087,
                                decoration: BoxDecoration(
                                border: Border.all(width: 1, 
                                color: Colors.white),
                                 shape: BoxShape.circle,
                                 image: const DecorationImage(
                                  image: AssetImage('assets/aaron-doucett-EKAb601Q4Bo-unsplash.jpg'),
                                  fit: BoxFit.cover)
                                ),
                               ),
                                ),
                             const SizedBox(width: 13,),
                             const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Get 50% off on all skin care service',
                                 style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 8,),
                             Text('Enjoy 50% discount off all skin care',
                             style: TextStyle(color: Colors.grey),),
                             Text('services near your area',
                             style: TextStyle(color: Colors.grey,),)
                               ]
                               ),
                               const SizedBox(width:50),
                             const Align(
                              alignment: Alignment.topRight,
                              child: Text('05:21')
                             )
                ]
               ),
             ),
            )
          ]
        ),
      ),
    );
  }
}