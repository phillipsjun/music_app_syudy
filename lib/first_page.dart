import 'package:flutter/material.dart';
import 'package:music_app1/main.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

double _currentSliderValue= 1;

bool click=true;

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyApp()));},
                    icon:const Icon( Icons.arrow_back_ios),color: Colors.white,iconSize: 30,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image:DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/5119IN3MfFL._AC_.jpg')),),
              ),
            ),
            const Text('花',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
            const Text('orange range',style: TextStyle(fontSize: 30,color: Colors.white),),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [

                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text('0.00'),
                ),
                Text('5.00'),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.skip_previous),iconSize: 70,),
                IconButton(onPressed: (){
                  setState((){
                    click=!click ;

                  });
                }, icon: Icon(
                    click ? Icons.play_circle:Icons.pause_circle_outline),iconSize: 50,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.skip_next),iconSize: 40,),

              ],
            )
          ]

      ),

    );
  }
}
