import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random=Random();
  int x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Loattary App'),
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
           Center(child:Text('Lottery winning number is 4')),
            SizedBox(height: 30,),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color:x==4?Colors.orangeAccent: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),

                child:x==4?Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.done,size: 30,color: Colors.green,),
                    SizedBox(height: 20),
                    Text('Congratulations,You win the lottery,your number is$x.\n',textAlign: TextAlign.center,)

                  ],
                )
                    :Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.error,size: 30,color: Colors.red,),
                    SizedBox(height: 20),
                    Text('Better luck next time,your number is$x.\nTry again',textAlign: TextAlign.center,)

                  ],
                ),
              ),
              
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          x=random.nextInt(10);
          setState(() {

          });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

