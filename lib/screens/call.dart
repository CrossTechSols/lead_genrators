import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:particles_flutter/particles_flutter.dart';
// this guide is good to study phone calling functionality   https://www.educative.io/answers/how-to-make-calls-in-flutter
class callscreen extends StatefulWidget {
  const callscreen({Key? key}) : super(key: key);

  @override
  State<callscreen> createState() => _callscreenState();
}

class _callscreenState extends State<callscreen> {
  @override
  double? screenHeight;
  double? screenWidth;
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;


    return   Scaffold(

      body: Container(
        height: screenHeight ,
      width: screenWidth ,
      color: Colors.black87,
        child: ListView(

      children:[
        Stack(
            // alignment: Alignment.center,
            // textDirection: TextDirection.rtl,
            fit: StackFit.loose,
            clipBehavior: Clip.hardEdge,
            children: <Widget>[


                  CircularParticle(
                    // key: UniqueKey(),
                    awayRadius: 80,
                    numberOfParticles: 250,
                    speedOfParticles: 0.1,
                    height: screenHeight,
                    width: screenWidth,
                    onTapAnimation: true,
                    particleColor: Colors.white.withAlpha(150),
                    awayAnimationDuration: Duration(milliseconds: 600),
                    maxParticleSize: 6,
                    isRandSize: true,
                    isRandomColor: true,
                    randColorList: [
                      Colors.deepOrange.withAlpha(210),
                      Colors.orange.withAlpha(210),
                      Colors.orangeAccent.withAlpha(210),
                      Colors.deepOrangeAccent.withAlpha(210),
                      Colors.white.withAlpha(210),
                    ],
                    awayAnimationCurve: Curves.elasticInOut,
                    enableHover: true,
                    hoverRadius: 0.1,
                    connectDots: false, //not recommended
                  ),






              //User And Numbers
              Column(
                children: [

                  //User 1 row
                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                           child:   Container(
                             child: IconButton
                                  (

                                 onPressed: (){




                                },

                                    icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                             ),
                           )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                           child:   Container(
                             child: IconButton
                                  (

                                 onPressed: (){

                                  _callNumber();


                                },

                                    icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                             ),
                           )
                          )  ,
                        ),
                      ],

                    ),
                  ),

                //  User 2 Row
                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){




                                  },

                                  icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                                ),
                              )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){

                                    _callNumber();


                                  },

                                  icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                                ),
                              )
                          )  ,
                        ),
                      ],

                    ),
                  ),

                //  User 3
                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){




                                  },

                                  icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                                ),
                              )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){

                                    _callNumber();


                                  },

                                  icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                                ),
                              )
                          )  ,
                        ),
                      ],

                    ),
                  ),


                //  User 4

                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){




                                  },

                                  icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                                ),
                              )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){

                                    _callNumber();


                                  },

                                  icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                                ),
                              )
                          )  ,
                        ),
                      ],

                    ),
                  ),


                //  User 5

                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){




                                  },

                                  icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                                ),
                              )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){

                                    _callNumber();


                                  },

                                  icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                                ),
                              )
                          )  ,
                        ),
                      ],

                    ),
                  ),


                //  User 6
                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){




                                  },

                                  icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                                ),
                              )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){

                                    _callNumber();


                                  },

                                  icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                                ),
                              )
                          )  ,
                        ),
                      ],

                    ),
                  ),


                //  User 7
                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){




                                  },

                                  icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                                ),
                              )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){

                                    _callNumber();


                                  },

                                  icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                                ),
                              )
                          )  ,
                        ),
                      ],

                    ),
                  ),

                //  User 8
                  Padding(
                    padding: const EdgeInsets.only(top:30,left: 30, right: 30),
                    child: Row(

                      children: [
                        Container(width: 212,height: 60,margin: EdgeInsets.only(right: 25),

                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){




                                  },

                                  icon:Icon(Icons.supervised_user_circle_sharp, size: 20 , color: Colors.white.withAlpha(200), ) ,

                                ),
                              )
                          )  ,
                        ),




                        Container(width: 60,height: 60,
                          alignment: Alignment.center,

                          decoration:

                          BoxDecoration(color: Colors.black45,

                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)
                            ),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],

                          ) ,


                          //yehan changes krne hain


                          child: ClipRRect(

                            // borderRadius: BorderRadius.circular(20),
                              child:   Container(
                                child: IconButton
                                  (

                                  onPressed: (){

                                    _callNumber();


                                  },

                                  icon:Icon(Icons.call, size: 20 ,  color: Colors.white.withAlpha(200) ) ,

                                ),
                              )
                          )  ,
                        ),
                      ],

                    ),
                  ),




                ],
              ),



















            ]
        ),




      ],
        ),

      ),



    );
  }



//  Direct phone call liabrary

  _callNumber() async{
    const number = '03172284292'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }
}





