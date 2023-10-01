 import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mrfixr/forgotscreen.dart';

import 'bottomnavbar.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailOrPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isVisible = false;
  bool rememberMe = false;

  bool isEmail(String input) => EmailValidator.validate(input);

  bool isPhone(String input) => RegExp(
  r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$'
  ).hasMatch(input);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Mr. ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 106, 189),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Fixr Provider',
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 193, 22),
                        fontSize: 30,
                    fontWeight: FontWeight.bold,
                      )
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35,),
               Padding(
                 padding: const EdgeInsets.only(left:5,right:5),
              child: Container(
                 decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                   padding: const EdgeInsets.only(right:1),
                    child:
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Email or Phone',
                        style: TextStyle(color: Color.fromARGB(255, 4, 83, 147),fontSize: 15,fontWeight: FontWeight.bold),),
                       const SizedBox(width: 30,),
                        Expanded(
                          child: TextFormField(
                            //textAlign: TextAlign.center,
                            controller: emailOrPhoneController,
                            obscureText: isVisible,
                               decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter email or phone',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                               )
                             )
                          ),
                        ]
                     )
                     ),
                 ),
               const SizedBox(height:35),
            Padding(
                 padding: const EdgeInsets.only(left:6,right: 6),
                 child: Container(
                 decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                   padding: const EdgeInsets.only(right:1),
                    child:
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Password',
                        style: TextStyle(color: Color.fromARGB(255, 4, 83, 147),fontSize: 15,fontWeight: FontWeight.bold),),
                       const SizedBox(width: 65,),
                        Expanded(
                          child: TextFormField(
                            //textAlign: TextAlign.center,
                            controller: passwordController,
                            obscureText: isVisible,
                               decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '********',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                //fontWeight: FontWeight.bold
                              ),
                              suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    isVisible =   !isVisible;
                                  });
                                }, 
                                icon: isVisible
                                    ? const Icon(
                                      Icons.visibility_off,
                                      color: Color.fromARGB(255, 4, 83, 147),
                                      )
                                    : const Icon(Icons.visibility,
                                      color: Color.fromARGB(255, 4, 83, 147),
                                      ), 
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
               ),
              const SizedBox(height: 10,),  
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:5),
                    child: SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: Theme(
                        data: ThemeData(
                          unselectedWidgetColor: Colors.grey.shade800
                        ), 
                        child: Checkbox(
                          activeColor: const Color.fromARGB(255, 4, 106, 189),
                     value: rememberMe,
                     onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                  },

                        )
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0,),
                  const Text(
                    "Remember Me",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14
                    ),
                  ),
                   SizedBox(width: MediaQuery.of(context).size.width*0.25),
                  TextButton(
                    onPressed: (){
                          Navigator.push(
                             context,
                        MaterialPageRoute(builder: (context) => const ForgotScreen()),
                          );
                             },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.orange, 
                        fontSize: 14,
                      ),
                    ),
                  ),              
                ],
              ),
              const SizedBox(height: 35,),
              SizedBox(
                 height: MediaQuery.of(context).size.height*0.06,
                 width: MediaQuery.of(context).size.width*0.93,
                 child: ElevatedButton(
                  onPressed:signIn,
                   
                   style: ElevatedButton.styleFrom(
                     backgroundColor:
                       const Color.fromARGB(255, 4, 83, 147),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(8)),
                   ),
                   child: const Text(
                     "Sign In",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),
                   )
                 ),
              ),
              const SizedBox(
                height: 10,
              ),
                  const Text(
                    "Or",
                    style: TextStyle(color: Colors.black,
                    fontSize: 13
                    ),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do not have an account?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 106, 189)),
                  ),
                  // const SizedBox(width: 3,),
                  TextButton(
                    onPressed: () {
                      //Navigator.pushReplacement(
                        //context, 
                        //MaterialPageRoute(
                          //builder: (context) =>
                          //const SignUpScreen()
                        //),
                      //);
                    },
                    child: const Text(
                      "Register Here",
                      style: TextStyle(
                        color: Colors.orange, 
                        fontSize: 13,
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    
    );

  }


void signIn() {
  final emailOrPhone = emailOrPhoneController.text.trim();
  final password = passwordController.text.trim();

  if (emailOrPhone.isEmpty && password.isEmpty) {
    showSnackBar("Please enter email or phone and password.");
  } else if (password.isNotEmpty && password.length < 8) {
    showSnackBar("Password should be at least 8 characters.");
  } else if (emailOrPhone.isEmpty) {
    if (password.isNotEmpty && password.length < 8) {
      showSnackBar("Password should be at least 8 characters.");
    } else {
      showSnackBar("Please enter your email or phone number.");
    }
  } else if (!isEmail(emailOrPhone)&& !isPhone(emailOrPhone)) {
    showSnackBar("Please enter a valid Email or phone number");
  }  else {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BottomNav()),
    );
    showSnackBar("Successfully Logged In", backgroundColor: Colors.green);
  }
}



   void showSnackBar(String message, {Color? backgroundColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        margin: const EdgeInsets.all(15),
        behavior: SnackBarBehavior.floating,
        content: Text(message,
        style: const TextStyle(fontSize: 16),),
       backgroundColor: backgroundColor ?? Colors.red,
        )
       );
  }
}

