 import 'package:flutter/material.dart';
import 'package:mrfixr/morescreen/profile.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
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
          ' Profile Information',
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w900,
              fontSize: 17),
        ),
        ),

    );
  }
}