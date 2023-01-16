import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:getwidget/getwidget.dart';
// import 'package:url_launcher/url_launcher.dart';
class home extends StatelessWidget {
  // final Uri _url = Uri.parse('tel://923353518670');





  //Images work for slider
  static const List<String> sampleImages = [
    "https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1517245386807-bb43f82c33c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "https://images.unsplash.com/photo-1516321318423-f06f85e504b3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  ];
  //Images work for slider ends here

  @override
  Widget build(BuildContext context) {
    return


      Scaffold(

      //in order drawer to work you need to have an AppBar
    //   appBar: AppBar(
    //     title: Text("title"),
    //     backgroundColor: Colors.orange,
    //   ),
    //   drawer: Drawer(
    //     child: ListView(
    //       padding: const EdgeInsets.all(0),
    //       children: [
    //         const DrawerHeader(
    //           decoration: BoxDecoration(
    //             color: Colors.orange,
    //           ), //BoxDecoration
    //           child: UserAccountsDrawerHeader(
    //             decoration: BoxDecoration(color: Colors.orange),
    //             accountName: Text(
    //               "HMAC",
    //               style: TextStyle(fontSize: 18),
    //             ),
    //             accountEmail: Text("info@hmac.com"),
    //             currentAccountPictureSize: Size.square(50),
    //             currentAccountPicture: CircleAvatar(
    //               backgroundColor: Color.fromARGB(255, 255, 77, 12),
    //               child: Text(
    //                 "H",
    //                 style: TextStyle(fontSize: 30.0, color: Colors.white),
    //               ), //Text
    //             ), //circleAvatar
    //           ), //UserAccountDrawerHeader
    //         ), //DrawerHeader
    //         ListTile(
    //           leading: const Icon(Icons.person),
    //           title: const Text(' Help Lines '),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //         ListTile(
    //           leading: const Icon(Icons.question_mark),
    //           title: const Text(' About '),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //         ListTile(
    //           leading: const Icon(Icons.book_online_outlined),
    //           title: const Text(' Portfolio '),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //         ListTile(
    //           leading: const Icon(Icons.video_label),
    //           title: const Text(' Company Videos '),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //         ListTile(
    //           leading: const Icon(Icons.monetization_on_sharp),
    //           title: const Text(' Packages '),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //         ListTile(
    //           leading: const Icon(Icons.miscellaneous_services),
    //           title: const Text('Services'),
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    //
    //
    //  bottomNavigationBar: CurvedNavigationBar(
    //   backgroundColor: Colors.orange,
    //   items: <Widget>[
    //
    //
    //
    //
    //     Icon(Icons.call, size: 30 ,color: Colors.orange),
    //     Icon(Icons.home, size: 30 ,color: Colors.orange),
    //
    //
    //     Icon(Icons.chat_outlined, size: 30,color: Colors.orange),
    //   ],
    //   onTap: (index) {
    //     //Handle button tap
    //
    //   },
    // ),
     body:



     Container( color: Colors.black87,
       // SingleChildScrollView , makes you content scroable
     child:


     //List View Sa Pura Scroll a gye ga Container main
     ListView(
       children : [



       Column(

         children: [
           FanCarouselImageSlider(
             imagesLink: sampleImages,
             isAssets: false,
               showIndicator:false,
               initalPageIndex:1,
               sliderDuration : const Duration(milliseconds: 1000),
               autoPlayInterval : const Duration(milliseconds: 3000),
               sliderHeight : 350,
               sliderWidth : double.infinity,
               imageRadius : 15,
               turns : 160,
               imageFitMode : BoxFit.cover,


           ),

           //Two Square Creation first container

           Padding(
             padding: const EdgeInsets.only(top: 20,bottom: 30),
             child: Text("Services",textAlign:TextAlign.center,style:TextStyle(color: Colors.white , fontSize: 30 , ) ,),
           ),

           SingleChildScrollView(
         child:  Column(
               //ya aik row ha slider k bad ke jis main do container ha
               children: [

                 //ya do baksa hain slider k bad k
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [


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

                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(5),
                         child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,
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

                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(5),
                         child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,
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

                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(5),
                         child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,
                       )  ,
                     ),

                   ],
                 ),

                 //ya 2 row ha first services row k bad k bad ke jis main do container hain ha

                 Padding(
                   padding: const EdgeInsets.only(top: 30),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [


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

                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(5),
                           child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,)  ,

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

                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(5),
                           child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,
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

                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(5),
                           child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,
                         )  ,


                       ),



                     ],
                   ),
                 ),
              //ya 2 row ha first services row k bad k bad ke jis main do container hain ha ends here

                 //Circles
                 Padding(
                   padding: const EdgeInsets.only(top: 60),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [


                       Container(width: 60,height: 60,
                         alignment: Alignment.center,

                         decoration:

                         BoxDecoration(color: Colors.black45,

                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(100),
                               topRight: Radius.circular(100),
                               bottomLeft: Radius.circular(100),
                               bottomRight: Radius.circular(100)
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

                         child:  ClipRRect(
                             borderRadius: BorderRadius.circular(100),
                            child: Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,))  ,

                       ),
                       Container(width: 60,height: 60,
                         alignment: Alignment.center,

                         decoration:

                         BoxDecoration(color: Colors.black45,

                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(100),
                               topRight: Radius.circular(100),
                               bottomLeft: Radius.circular(100),
                               bottomRight: Radius.circular(100)
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

                         child: ClipRRect(borderRadius: BorderRadius.circular(100),child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,)   ,

                       ),
                       Container(width: 60,height: 60,
                         alignment: Alignment.center,

                         decoration:

                         BoxDecoration(color: Colors.black45,

                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(100),
                               topRight: Radius.circular(100),
                               bottomLeft: Radius.circular(100),
                               bottomRight: Radius.circular(100)
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

                         child: ClipRRect(borderRadius: BorderRadius.circular(100),child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 30,height: 30,alignment: Alignment.center,fit: BoxFit.cover,) ,
                         )   ,

                       ),



                     ],
                   ),
                 ),


                 //banner
                 Padding(
                   padding: const EdgeInsets.only(top: 60,bottom: 60),
                   child:


                   Column(
                     children: [
                       //row for blog banner
                       Row(

                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [


                           Container(width: 300,height: 120,
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

                             //ClipRRect Allows to make your image border radius
                             child: Padding(
                               padding: const EdgeInsets.all(12.0),
                               child: ClipRRect(

                                 borderRadius:  BorderRadius.circular(10),
                                   child:Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 290,height: 160,alignment: Alignment.center,fit: BoxFit.cover,
                                   )

                               ),
                             )  ,


                           ),








                         ],
                       ),


                       Padding(
                         padding: const EdgeInsets.only(top: 30),
                         child: Container( width: 60, height: 20, child: ClipRRect( borderRadius: BorderRadius.circular(22),

                             child: ElevatedButton(
                                 onPressed: (){},
                                 style:ElevatedButton.styleFrom( primary: Colors.deepOrange,),
                             child: Text("blogs",style: TextStyle(fontSize: 7),)) )  ),
                       )

                      ,
                       // Three Rounded Circles
                       Padding(
                         padding: const EdgeInsets.only(top:30,bottom: 30),
                         child: Row(

                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [

                             Padding(
                               padding: const EdgeInsets.only(right: 40),
                               child: Column(


                                 //one big circle
                                 children: [

                                   Container(width: 130,height: 130,
                                     alignment: Alignment.center,


                                     decoration:

                                     BoxDecoration(color: Colors.black45,

                                       borderRadius: BorderRadius.only(
                                           topLeft: Radius.circular(100),
                                           topRight: Radius.circular(100),
                                           bottomLeft: Radius.circular(100),
                                           bottomRight: Radius.circular(100)
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

                                     child:  ClipRRect(
                                         borderRadius: BorderRadius.circular(360),
                                         child: Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 90,height: 90,alignment: Alignment.center,fit: BoxFit.cover,))  ,

                                   )


                                 ],
                               ),
                             ),
                             Column(

                             //  two small circles
                               children: [

                                 Padding(
                                   padding: const EdgeInsets.only(top:10,bottom: 10),
                                   child: Row(
                                     //small circle one
                                     children: [
                                       Container(width: 40,height: 40,
                                         alignment: Alignment.center,

                                         decoration:

                                         BoxDecoration(color: Colors.black45,

                                           borderRadius: BorderRadius.only(
                                               topLeft: Radius.circular(100),
                                               topRight: Radius.circular(100),
                                               bottomLeft: Radius.circular(100),
                                               bottomRight: Radius.circular(100)
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

                                         child:  ClipRRect(
                                             borderRadius: BorderRadius.circular(360),
                                             child: Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 20,height: 20,alignment: Alignment.center,fit: BoxFit.cover,))  ,

                                       )
                                     ],
                                   ),
                                 ),

                                 Padding(
                                   padding: const EdgeInsets.only(top:10,bottom: 10),
                                   child: Row(

                                     children: [
                                       Container(width: 40,height: 40,
                                         alignment: Alignment.center,

                                         decoration:

                                         BoxDecoration(color: Colors.black45,

                                           borderRadius: BorderRadius.only(
                                               topLeft: Radius.circular(100),
                                               topRight: Radius.circular(100),
                                               bottomLeft: Radius.circular(100),
                                               bottomRight: Radius.circular(100)
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

                                         child:  ClipRRect(
                                             borderRadius: BorderRadius.circular(360),
                                             child: Image.network("https://images.unsplash.com/photo-1661956600684-97d3a4320e45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",width: 20,height: 20,alignment: Alignment.center,fit: BoxFit.cover,))  ,

                                       )
                                     ],
                                   //  small circle 2
                                   ),
                                 ),


                               ],


                             )
                           ],
                         ),
                       )
                       ,




                       //accordian work
                       Padding(
                         padding: const EdgeInsets.only(top:50),
                         child: Container(
                           width: 300,

                           child: Column(

                             children: [
                              GFAccordion(

                                title: 'GF Accordion',
                                content: 'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'
                                ,
                                titleBorderRadius:BorderRadius.only(bottomLeft:Radius.circular(0),bottomRight: Radius.circular(0),topLeft: Radius.circular(10) ,topRight: Radius.circular(10),  ),
                                contentBorderRadius:BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(0) ,topRight: Radius.circular(0), ),
                                collapsedTitleBackgroundColor:Colors.black45,
                                expandedTitleBackgroundColor:Colors.black45,contentBackgroundColor:Colors.black12,

                                textStyle:TextStyle(fontSize: 12,color: Colors.deepOrange[400],),

                                margin: EdgeInsets.all(8.0),
                                  showAccordion:true,


                                // contentPadding:EdgeInsets.only(top:10),
                               )


                              ,

                               GFAccordion(

                                 title: 'GF Accordion',
                                 content: 'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'
                                 ,
                                 titleBorderRadius:BorderRadius.only(bottomLeft:Radius.circular(0),bottomRight: Radius.circular(0),topLeft: Radius.circular(10) ,topRight: Radius.circular(10),  ),
                                 contentBorderRadius:BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(0) ,topRight: Radius.circular(0), ),

                                 collapsedTitleBackgroundColor:Colors.black45,
                                 expandedTitleBackgroundColor:Colors.black45,contentBackgroundColor:Colors.black12,

                                 textStyle:TextStyle(fontSize: 12,color: Colors.deepOrange[400],),

                                 margin: EdgeInsets.all(8.0),

                                 showAccordion:true,

                               ),

                               GFAccordion(

                                   title: 'GF Accordion',
                                   content: 'GetFlutter is an open source library that comes with pre-build 1000+ UI components.'
                                   ,
                                   titleBorderRadius:BorderRadius.only(bottomLeft:Radius.circular(0),bottomRight: Radius.circular(0),topLeft: Radius.circular(10) ,topRight: Radius.circular(10),  ),
                                   contentBorderRadius:BorderRadius.only(bottomLeft:Radius.circular(10),bottomRight: Radius.circular(10),topLeft: Radius.circular(0) ,topRight: Radius.circular(0), ),
                                 collapsedTitleBackgroundColor:Colors.black45,expandedTitleBackgroundColor:Colors.black45,contentBackgroundColor:Colors.black12,

                                 textStyle:TextStyle(fontSize: 12,color: Colors.deepOrange[400],),

                                 margin: EdgeInsets.all(8.0),

                                 showAccordion:true,

                               ),
                             ],
                           ),
                         ),
                       )



                     ],
                   ),
                 ),




               ]



           //ya column ha slider k bad ka




         ),

           )

           ,



         ],
       ),



         //particles for bottom attachment
         Container(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

               CircularParticle(
                 key: UniqueKey(),
                 awayRadius: 680,
                 numberOfParticles: 20,
                 speedOfParticles: 0.1,
                 height: 60,
                 width: 350,
                 onTapAnimation: true,
                 particleColor: Colors.white.withAlpha(150),
                 awayAnimationDuration: Duration(milliseconds: 6000),
                 maxParticleSize: 5,
                 isRandSize: true,
                 isRandomColor: true,
                 randColorList: [
                   Colors.orange.withAlpha(210),
                   Colors.white.withAlpha(210),
                   // Colors.yellow.withAlpha(210),
                   // Colors.green.withAlpha(210)
                 ],
                 awayAnimationCurve: Curves.bounceIn,
                 enableHover: true,
                 hoverColor: Colors.white,
                 hoverRadius: 30,
                 connectDots: false, //not recommended
               ),
             ],
           ),
         ),

       ]
     ),


     )




    );
  }

  //function for phone call
  // Future<void> _launchUrl() async {
  //   if (!await launchUrl(_url)) {
  //     throw 'Could not launch $_url';
  //   }
  // }


}
