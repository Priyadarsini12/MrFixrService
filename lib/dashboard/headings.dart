import 'package:flutter/material.dart';
import 'package:mrfixr/dashboard/constants.dart';

class Headings extends StatelessWidget {
  final String text;
  const Headings({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: headBack,
      padding: EdgeInsets.all( width * 0.035),
      child: Text(text, style: TextStyle(color: Colors.black, fontSize: width * 0.04),),
    );
  }
}

class LogoHeadings extends StatelessWidget {
  final String text;
  final String logo;
  const LogoHeadings({super.key, required this.text, required this.logo});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: headBack,
      padding: EdgeInsets.all( width * 0.035),
      child: Row(
        children: [
          Image.asset(logo,
          height: width * 0.05,
          width: width * 0.05,
          ),
          SizedBox(width: width * 0.02,),
          Text(text, style: TextStyle(color: Colors.black, fontSize: width * 0.04),),
        ],
      ),
    );
  }
}

class LogoHeadings2 extends StatelessWidget {
  final String text;
  final String logo;
  const LogoHeadings2({super.key, required this.text, required this.logo});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: headBack,
      padding: EdgeInsets.only(left: width * 0.035, right: width * 0.035, top: width * 0.025, bottom: width * 0.025),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(logo,
              height: width * 0.05,
              width: width * 0.05,
              ),
              SizedBox(width: width * 0.02,),
              Text(text, style: TextStyle(color: Colors.black, fontSize: width * 0.04),),
            ],
          ),
          Theme(
            data: ThemeData(
              highlightColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
              splashColor: Colors.transparent,
            ),
            child: SizedBox(
              height: width * 0.08,
              child: TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: (){}, 
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.amber.shade700, width: 0.5))
                  ),
                  child: Text('View All', 
                  style: TextStyle(
                    fontSize: width * 0.036,
                    color: Colors.amber.shade700),
                  ),
                )),
            ),
          )
        ],
      ),
    );
  }
}