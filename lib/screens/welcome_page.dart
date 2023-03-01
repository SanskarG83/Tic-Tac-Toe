import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'game.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
        children: [
            Expanded(
              flex: 1,
              child:
              Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  SizedBox(height: 20,),
                    Text("________________", style: const TextStyle(fontSize: 43, color: Colors.black, fontFamily:'RobotoSlab',fontWeight: FontWeight.bold),),
                    SizedBox(height: 40,),
                    Text("| Tic   Tac   Toe |", style: const TextStyle(fontSize: 45, color: Colors.black, fontFamily:'RobotoSlab',fontWeight: FontWeight.bold),),
                    Text("________________", style: const TextStyle(fontSize: 43, color: Colors.black, fontFamily:'RobotoSlab',fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Image(image: AssetImage("assets/images/img.png")),
                    SizedBox(height: 50,),
                  ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GameScreen()));
                              },
                              child: Text("Play Game", style: const TextStyle(fontSize: 20, color: Colors.black, fontFamily:'RobotoSlab'),),),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
