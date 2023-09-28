
 
import 'package:flutter/material.dart';
import 'package:mrfixr/morescreen/profile.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController namecontroller =TextEditingController();
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController typecontroller =TextEditingController();
  TextEditingController numbercontroller =TextEditingController();
  TextEditingController phoneController=TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


  final GlobalKey<FormState> _formKey = GlobalKey();

   bool newPassword=false;
   bool confirmPassword=false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    newPassword=true;
    confirmPassword=true;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.5,
        titleSpacing: 0,
        backgroundColor: Colors.white.withOpacity(0.94),
        leading: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Profilepage(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blue.shade800,
              size: 17,
            ),
          ),
        ),
        title: Text(
          ' Profile Information',
          style: TextStyle(
            color: Colors.blue.shade800,
            fontWeight: FontWeight.w900,
            fontSize: 17,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1,color: Colors.blue.shade800)
                )
              ),
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.blue.shade800,
                labelColor: Colors.blue.shade800,
                unselectedLabelColor: Colors.blue.shade800,
                tabs: const [
                  Tab(
                    child: Text(
                      'General Info',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Account Info',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                   SingleChildScrollView(
                     child: Column(
                      children: [
                        Container(
                          //height: MediaQuery.of(context).size.height*0.27,
                         // width: MediaQuery.of(context).size.width*0.27,
                         height: 100,
                         width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                               shape: BoxShape.circle,
                               image: const DecorationImage(
                                image: AssetImage('assets/aaron-doucett-EKAb601Q4Bo-unsplash.jpg'),
                                fit: BoxFit.cover)
                              ),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text('Full Name'), 
                                  SizedBox(width: 1,),
                                Text('*',style: TextStyle(color: Colors.red),),
                                ]
                              ),
                              const SizedBox(height: 5,),
                              SizedBox(
                   
                               width: MediaQuery.of(context).size.width*0.95,
                                child: TextFormField(
                                  controller: namecontroller,
                            autovalidateMode:AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: 'Enter Your Name',
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                             ),
                                ),
                              ),
                               const SizedBox(height: 15,),
                              const Row(
                                children: [
                                  Text('Email'), 
                                  SizedBox(width: 2,),
                                Text('*',style: TextStyle(color: Colors.red),),
                                ]
                              ),
                              const SizedBox(height: 5,),
                              SizedBox(
                               width: MediaQuery.of(context).size.width*0.95,
                                child: TextFormField(
                                  controller: emailcontroller,
                             autovalidateMode:AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: 'Enter Your Email Id',
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                             ),
                                ),
                              ),
                               const SizedBox(height: 15,),
                             const Row(
                                children: [
                                  Text('Identity Type'), 
                                  SizedBox(width: 1,),
                                Text('*',style: TextStyle(color: Colors.red),),
                                ]
                              ),
                              const SizedBox(height: 5,),
                              SizedBox(
                               width: MediaQuery.of(context).size.width*0.95,
                                child: TextFormField(
                                  controller: typecontroller,
                                autovalidateMode:AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: 'Enter Your Identity Type',
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                             ),
                                ),
                              ),
                              const SizedBox(height: 15,),
                             const Row(
                                children: [
                                  Text('Identity Number'), 
                                  SizedBox(width: 1,),
                                Text('*',style: TextStyle(color: Colors.red),),
                                ]
                              ),
                              const SizedBox(height: 5,),
                              SizedBox(
                               width: MediaQuery.of(context).size.width*0.95,
                                child: TextFormField(
                                  controller:numbercontroller,
                            autovalidateMode:AutovalidateMode.onUserInteraction,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              bottom: 8.0,
                              top: 8.0,
                            ),
                            hintText: 'Enter your identity Number',
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 129, 129, 129),
                            ),
                            focusColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black38),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                             ),
                                ),
                              ),
                              const SizedBox(height: 15,),
                           ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                   child: Image.asset('assets/aaron-doucett-EKAb601Q4Bo-unsplash.jpg'),
                           ),

                             SizedBox(height: 15,),
                         SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: ElevatedButton(
                        onPressed: () {
                         // if (_formKey.currentState!.validate()) {
                             //Navigator.push(
                               //// context,
                                //MaterialPageRoute(
                                    //builder: (context) => AstroDashBoardPage()));
                            
                  
                          },
                        
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade800,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text(
                          'Save',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                     ),
                        ],
                          ),
                        )
                      ],
                     ),
                     ),
                     //account info content
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Column(
                        children: [
                          const Row(
                                  children: [
                                    Text('Phone Number'), 
                                    SizedBox(width: 1,),
                                  Text('*',style: TextStyle(color: Colors.red),),
                                  ]
                                ),
                                const SizedBox(height: 7,),
                          SizedBox(
                                 width: MediaQuery.of(context).size.width*0.95,
                                  child: TextFormField(
                                    controller: phoneController,
                            autovalidateMode:AutovalidateMode.onUserInteraction,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 8.0,
                                bottom: 8.0,
                                top: 8.0,
                              ),
                              hintText: 'Enter your Phone Number',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129),
                              ),
                              focusColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                               ),
                                  ),
                             ),
                             SizedBox(height: 15,),
                             const Row(
                                  children: [
                                    Text('New password'), 
                                    SizedBox(width: 1,),
                                  Text('*',style: TextStyle(color: Colors.red),),
                                  ]
                                ),
                                const SizedBox(height: 7,),
                                 SizedBox(
                                 width: MediaQuery.of(context).size.width*0.95,
                                  child: TextFormField(
                                    controller: newPasswordController,
                            autovalidateMode:AutovalidateMode.onUserInteraction,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 8.0,
                                bottom: 8.0,
                                top: 8.0,
                              ),
                              hintText: 'Enter your new password',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129),
                              ),
                              suffixIcon: IconButton(
                              icon: Icon(newPassword? Icons.visibility:Icons.visibility_off,color:Colors.grey,),
                              onPressed: () {
                              setState(() {
                              newPassword=!newPassword;
                              }
                            );
                            },
                            ),
                              focusColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                               ),
                                  ),
                             ),
                             const SizedBox(height: 15,),
                             const Row(
                                  children: [
                                    Text('Confirm New password'), 
                                    SizedBox(width: 1,),
                                  Text('*',style: TextStyle(color: Colors.red),),
                                  ]
                                ),
                                const SizedBox(height: 7,),
                          SizedBox(
                                 width: MediaQuery.of(context).size.width*0.95,
                                  child: TextFormField(
                                    controller: confirmPasswordController,
                            autovalidateMode:AutovalidateMode.onUserInteraction,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                left: 8.0,
                                bottom: 8.0,
                                top: 8.0,
                                 ),
                              hintText: 'Enter your new confirm password',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129),
                              ),
                              suffixIcon: IconButton(
                              icon: Icon(confirmPassword? Icons.visibility:Icons.visibility_off,color: Colors.grey,),
                                onPressed: () {
                               setState(() {
                             confirmPassword=!confirmPassword;
                            }
                            );
                                 },
                               ),
                              focusColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                               ),
                                 ),
                             ),
                             SizedBox(height: 30,),
                           SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: ElevatedButton(
                          onPressed: () {
                           // if (_formKey.currentState!.validate()) {
                               //Navigator.push(
                                 //// context,
                                  //MaterialPageRoute(
                                      //builder: (context) => AstroDashBoardPage()));
                              
                                       
                            },
                          
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade800,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text(
                            'Save',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                       ),
                     
                        ],
                       ),
                     )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

