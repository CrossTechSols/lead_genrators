import 'chat.dart';
import 'call.dart';
import 'home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

//Bottom Navigation Bar Work Here Bottom Navigation Bar SCreen


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final items = const [
    Icon(Icons.call, size: 30,color: Colors.deepOrange,),
    Icon(Icons.home, size: 30,color: Colors.deepOrange),
    Icon(Icons.sms_outlined, size: 30,color: Colors.deepOrange),


  ];

  // This index value will define which screen will start first
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,


      appBar: AppBar(
        title: Text("HMAC"),
        backgroundColor: Colors.black45,

      ),




      drawer: Drawer(
          backgroundColor:Colors.black45,
        child: ListView(

          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepOrange),
                accountName: Text(
                  "HMAC",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("info@hmac.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 255,150, 12),
                  child: Text(
                    "H",
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person,color: Colors.white),
              title: const Text(' Help Lines ',style: TextStyle(color: Colors.white),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_mark,color: Colors.white),
              title: const Text(' About ',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book_online_outlined,color: Colors.white),
              title: const Text(' Portfolio ',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label,color: Colors.white),
              title: const Text(' Company Videos ',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.monetization_on_sharp,color: Colors.white),
              title: const Text(' Packages ',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.miscellaneous_services,color: Colors.white),
              title: const Text('Services',style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),









      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.black45,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.black45,
          // width: double.infinity,
          // height: double.infinity,
          // alignment: Alignment.center,
          child: getSelectedWidget(index: index)
      ),



    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0/*index zero*/:
        widget = callscreen()/*calling our call screen*/ ;
        break;
      case 1/*index one*/:
        widget =  home()  /*calling our home screen*/;
        break;

      case 2/*index 2*/:
        widget =chat()  /*calling our chat screen*/  ;
        break;
      // case 2:
      //   widget = chat() ;
      //   break;


      default:
        widget = home()  ;
        break;
    }
    return widget;
  }
}