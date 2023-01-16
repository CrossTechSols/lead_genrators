import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';


class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Container(
        color: Colors.indigo,
        child: Column(
          children: <Widget>[
Container(
  height: 592.6,
    child: Tawk(
      directChatLink: 'https://tawk.to/chat/63b5863747425128790b9ec4/1gluh8io9',
      visitor: TawkVisitor(
        name: 'HMAC',
        email: 'crosstechsols@gmail.com',
      ),

    )
)


          ],
        ),
      ),


    );
  }
}

