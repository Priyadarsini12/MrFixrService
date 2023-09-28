/*import 'package:flutter/material.dart';


class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(onPressed: (){},
                     icon:const Icon(Icons.keyboard_arrow_down_outlined,size: 30,)),
                      const SizedBox(height: 20,),
                      Text('Select Language',
                      style:TextStyle(color: Colors.blue.shade900,fontSize: 17,fontWeight: FontWeight.w600) ,),
                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width: MediaQuery.of(context).size.width*0.46,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amberAccent
                              ),
                              child :Center(
                               child: Container(
                                height: MediaQuery.of(context).size.height*0.09,
                                width: MediaQuery.of(context).size.width*0.25,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,
                                  ),
                             ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(.0),
                                   child: Image.asset('assets/united-kingdom.png',
                                    height: MediaQuery.of(context).size.height*0.054,
                                                                 width: MediaQuery.of(context).size.width*0.15,
                                                             ),
                                 ),
                               ),
                            ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: MediaQuery.of(context).size.height*0.20,
                              width: MediaQuery.of(context).size.width*0.46,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amberAccent
                              ),
                              child: Center(
                               child: Image.asset('assets/united-arab-emirates.png',
                                height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.20,
                
                           ),
                            ),

                            ),
                          ]
                        ),
                      ),
                       const SizedBox(height: 25,),
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

                  ]   
                      )
                );
            }  
              );
            },
            
          )

    );
  }

  }*/



/*import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  final List<String> languages = ['English', 'Arabic'];
  final List<String> languageImages = ['assets/united-kingdom.png', 'assets/united-arab-emirates.png'];

  void _showLanguageSelector(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.keyboard_arrow_down_outlined, size: 30),
              ),
              SizedBox(height: 20),
              Text(
                'Select Language',
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: languages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amberAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    languageImages[index],
                                  ),
                                ),
                              ),
                              SizedBox(height: 7), 
                              Text(
                                languages[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.95,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Language Selector'),
        onPressed: () {
          _showLanguageSelector(context);
        },
      ),
    );
  }
}*/

