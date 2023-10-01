import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {



  final emailorphoneController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

   bool newPassword=false;
   bool confirmPassword=false;
   @override
   void initState() {
    super.initState();
    newPassword=true;
    confirmPassword=true;
  }
   void sendOTP() {
  final emailorphone = emailorphoneController.text;
  final newPassword = newPasswordController.text;
  final confirmPassword = confirmPasswordController.text;
  bool isEmail(String input) => EmailValidator.validate(input);

  bool isPhone(String input) => RegExp(
  r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$'
  ).hasMatch(input);


  if (emailorphone.isEmpty) {
    showSnackbar("Please enter your email or phone number");
    return;
  } else if (!isEmail(emailorphone)&& !isPhone(emailorphone)) {
    showSnackbar("Please enter a valid email or Phone number");
    return;
  }

  if (newPassword.isEmpty) {
    showSnackbar("Please enter a new password.");
    return;
  } else if (newPassword.length < 8) {
    showSnackbar("Password should be at least 8 characters.");
    return;
  }

  if (confirmPassword.isEmpty) {
    showSnackbar("Please confirm your password.");
    return;
  } else if (confirmPassword.length < 8) {
    showSnackbar("Password should be at least 8 characters.");
    return;
  }
    if (newPassword != confirmPassword) {
    showSnackbar("Passwords do not match. Please try again.");
    return;
  }else {
      showSnackbar("OTP sent successfully");
    }
}


void showSnackbar(String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 1),
      margin: const EdgeInsets.all(15),
      behavior: SnackBarBehavior.floating,
    content: Text(
        message,
        style: const TextStyle(fontSize: 16),
      ),
      backgroundColor: Colors.red,
    ),
  );
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
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
              const SizedBox(height: 10,),
              const Text(
                "Please enter your registered emailaddress to",
                style: TextStyle(
                  color: Colors.black, fontSize: 15),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "receive a verification code",
                style: TextStyle(
                    color: Colors.black, fontSize: 15),
              ),
              const SizedBox(height: 15,),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                 maxLength: 10,
                  controller:emailorphoneController,
                  keyboardType: TextInputType.phone,
                  /*validator: (val) {
                    if(val!.isEmpty){
                      return "Enter an Email address";
                      }
                      else if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-=?^_`{|}~]+@[a-zA-Z0-9]+\.[com]{3}$").hasMatch(val)){
                        return " Please Enter a Valid Email Address";
                      }
                      return null;
                  },*/
                  decoration:  const InputDecoration(
                    counterText: '',
                    border: InputBorder.none,
                    hintText: 'Enter your email or phone Number',
                    hintStyle: TextStyle(
                      color:  Color.fromARGB(255, 4, 106, 189),
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: newPassword,
                  controller: newPasswordController,
                  /*validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter your New Password';
                    }
                    return null;
                  },*/
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'New Password',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 4, 106, 189),
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    suffixIcon: IconButton(
                         icon: Icon(newPassword? Icons.visibility:Icons.visibility_off,color: const Color.fromARGB(255, 4, 83, 147),),
                         onPressed: () {
                           setState(() {
                             newPassword=!newPassword;
                           }
                           );
                         },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: confirmPassword,
                  controller: confirmPasswordController,
                  /*validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter your Confirm Password';
                    }
                    return null;
                  },*/
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 4, 106, 189),
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    suffixIcon: IconButton(
                     icon: Icon(confirmPassword? Icons.visibility:Icons.visibility_off,color:const Color.fromARGB(255, 4, 83, 147)),
                         onPressed: () {
                           setState(() {
                             confirmPassword=!confirmPassword;
                           }
                           );
                         },
                       ),
                     ),
                  ),
                ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 12),
                child: Pinput(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 6,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyDecorationWith(
                    border: Border.all(
                      color: const Color.fromARGB(255, 1, 20, 39)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  submittedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      color: const Color.fromARGB(255, 236, 243, 234),
                      border: Border.all(
                            color:
                                const Color.fromARGB(255, 4, 106, 189))),
                  ),
                  /*validator: (s) {
                    return s == '2222222' ? null : 'OTP is incorrect';
                  },*/
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                 height: MediaQuery.of(context).size.height*0.06,
                 width: MediaQuery.of(context).size.width*0.93,
                 child: ElevatedButton(
                  onPressed: sendOTP,
                  /* onPressed: (){
                    if (_formKey.currentState!.validate()) {
                        // Navigator.pushReplacement(
                        //   context, 
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //     const ForgotScreen()
                        //   )
                        // );                  
                      }
                   }, */
                   style: ElevatedButton.styleFrom(
                     backgroundColor:
                       const Color.fromARGB(255, 4, 106, 189),
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10)),
                   ),
                   child: const Text(
                     "Send OTP",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),
                   )
                 ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "If you didn’t receive the code!",
                        style: TextStyle(
                            color: Colors.black, fontSize: 13),
                      ),
                      // const SizedBox(width: 3,),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Resend",
                          style: TextStyle(
                            color: Colors.orange, 
                            fontSize: 13,
                            decoration: TextDecoration.underline
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }

  final defaultPinTheme = PinTheme(
    width: 46,
    height: 46,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(2, 15, 27, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color:  Colors.black),
      borderRadius: BorderRadius.circular(15),
    ),
  );
}