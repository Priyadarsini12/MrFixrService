
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Signup.dart';
import 'bottomnavbar.dart';
import 'forgotscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();
  bool isVisible = false;
    bool rememberMe = false; 
  SharedPreferences? _prefs; 

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      _prefs = prefs;
      phoneController.text = _prefs!.getString('phone') ?? '';
      passwordController.text = _prefs!.getString('password') ?? '';
      rememberMe = _prefs!.getBool('rememberMe') ?? false;
      setState(() {});
    });
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        margin: const EdgeInsets.all(15),
        behavior: SnackBarBehavior.floating,
        content: Text(message,
        style: const TextStyle(fontSize: 16),),
        backgroundColor: Colors.red,
        )
       );
  }

  void signIn() {
    String phone = phoneController.text;
    String password = passwordController.text;
        if (rememberMe) {
      // Store phone and password if rememberMe is checked
      _prefs?.setString('phone', phone);
      _prefs?.setString('password', password);
      _prefs?.setBool('rememberMe', true);
    } else {
      // Clear stored values if rememberMe is unchecked
      _prefs?.remove('phone');
      _prefs?.remove('password');
      _prefs?.setBool('rememberMe', false);
    }


    if (phone.isEmpty && password.isEmpty) {
      showSnackBar("Enter your phone number ");
    } else if(phone.isEmpty || phone.length < 10)  {
      showSnackBar("Invalid phone number.");
    } else if (password.isEmpty) {
      showSnackBar("Enter your password.");
   }else if (password.isEmpty || password.length < 8) {
      showSnackBar("Password should be at least 8 characters.");
    }else {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BottomNav()),
    );
    showSnackBar("Successfully Logged In");
   }
  }

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
                      text: 'Fixr Service',
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
                 child: IntlPhoneField(
                       disableLengthCheck: true,
                         flagsButtonPadding: const EdgeInsets.only(right:10),
                             dropdownIconPosition: IconPosition.trailing,
                            controller: phoneController,
                            keyboardType: TextInputType.phone,
                         decoration: const InputDecoration(
                           hintText: 'Enter Your Phone Number',
                           hintStyle: TextStyle(
                               fontSize: 15,
                               color: Colors.grey,
                             ),
                          ),
                      initialCountryCode: 'IN',
                     ),
               ),
               const SizedBox(height:25),
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
                       const SizedBox(width: 30,),
                        Expanded(
                          child: TextFormField(
                            //textAlign: TextAlign.center,
                            controller: passwordController,
                            obscureText: isVisible,
                               decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your Password',
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
              const SizedBox(height: 6,),  
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
              const SizedBox(height: 30,),
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
                      Navigator.pushReplacement(
                        context, 
                        MaterialPageRoute(
                          builder: (context) =>
                          const SignUpScreen()
                        ),
                      );
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
}