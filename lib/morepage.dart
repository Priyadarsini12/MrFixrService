import 'package:flutter/material.dart';

void showMoreBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
    context: context,
    builder: (builderContext) {
   return Container(
    height: MediaQuery.of(context).size.height*0.50,
     width: MediaQuery.of(context).size.width*0.99,
                   decoration: const BoxDecoration(
              color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0))),
                 //color: Colors.white,
              child: Column(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.black,
                      size: 33,
                    )
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(
                      parent: NeverScrollableScrollPhysics(),
                    ),
                    itemCount: moreDetiles.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 35.0,
                      mainAxisExtent: 75,
                      // childAspectRatio: 0.85,
                    ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(2.0),
                    itemBuilder: (context, index) => GestureDetector(
                      // onTap: () => tapped(index),
                      child: MoreDetiles(
                        image: moreDetiles[index].image, 
                        title: moreDetiles[index].title
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          );
        }
          //tapped(int index) {
   //if (index == 0) {
   //Navigator.push(context,
    //   MaterialPageRoute(builder: (context) => const Profilepage()));}
     //} else if (index == 1) {
     //  Navigator.push(
    //   context, MaterialPageRoute(builder: (context) => ReportsScreen()));
    // } else if (index == 2) {
    // Navigator.push(context,
    //       MaterialPageRoute(builder: (context) => const ChatScreen()));
    // } else if (index == 3) {
    //  Navigator.push(
     //     context, MaterialPageRoute(builder: (context) => const SettingScreen()));
     // } else if (index == 4) {
    //   Navigator.push(
     //     context, MaterialPageRoute(builder: (context) => const SubscriptionsScreen()));
     //} else if (index == 5) {
     //  Navigator.push(
     //     context, MaterialPageRoute(builder: (context) => const TransactionScreen()));
      // } else if (index == 6) {
   //Navigator.push(
     //   context, MaterialPageRoute(builder: (context) => const AboutUsScreen()));
     //} else if (index == 7) {
     //  Navigator.push(context,
       //    MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen()));
     //} else if (index == 8) {
       //Navigator.push(context,
        //   MaterialPageRoute(builder: (context) => const TermsAndConditionsScreen()));  
    //} else if (index == 9) {
      // Navigator.push(
        //   context, MaterialPageRoute(builder: (context) => const RefundPolicyScreen()));
     //} else if (index == 10) {
       //Navigator.push(
         //  context, MaterialPageRoute(builder: (context) => const CancellationPolicyScreen()));
    // } else if (index == 11) {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => const SignOutScreen()));
     
  
   
class MoreList {
  late String image, title;

  MoreList({
    required this.image,
    required this.title,
  });
}

List<MoreList> moreDetiles = [
  MoreList(
    image: "assets/team.png",
    title: "Profile",
  ),
  MoreList(
    image: "assets/reports.png",
    title: "Reports",
  ),
  MoreList(
    image: "assets/chat.png",
    title: "Chat",
  ),
  MoreList(
    image: "assets/setting.png",
    title: "Setting",
  ),
  MoreList(
    image: "assets/reports.png",
    title: "My\nSubscriptions",
  ),
  MoreList(
    image: "assets/reports.png",
    title: "Transaction",
  ),
  MoreList(
    image: "assets/reports.png",
    title: "About Us",
  ),
  MoreList(
    image: "assets/reports.png",
    title: "Privacy Policy",
  ),
  MoreList(
    image: "assets/team.png",
    title: "Terms &\nConditions",
  ),
  MoreList(
    image: "assets/refund.png",
    title: "Refund Policy",
  ),
  MoreList(
    image: "assets/cancel.png",
    title: "Cancellation\nPolicy",
  ),
  MoreList(
    image: "assets/logout.png",
    title: "Sign Out",
  ),
];

class MoreDetiles extends StatelessWidget {
  const MoreDetiles({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.withOpacity(0.1)
            ),
            child: Center(
              child: Image.asset(
                image,
                height: MediaQuery.of(context).size.height*0.08,
                width: MediaQuery.of(context).size.width*0.30,
                // color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 12, 
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
              maxLines: 2,
              textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: true,applyHeightToLastDescent: true),
            ),
          ),
        ],
      ),
    );
  }
}

