import 'package:flutter/material.dart';
import 'package:music_app1/first_page.dart';
import 'package:music_app1/second_page.dart';
import 'package:music_app1/third_page.dart';
import 'package:gradients/gradients.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music app demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[850],

      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
                width: double.infinity,
                height:60 ,
                color: Colors.grey[700],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 150),
                      child: Text('ホーム',textAlign:TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white,),),
                    ),
                    Icon(Icons.search,color: Colors.white,)
                  ],
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('あなたへのおすすめ',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                Icon(Icons.chevron_right,color: Colors.white,),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap:  (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpage()));
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image:const DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/5119IN3MfFL._AC_.jpg'))),
                        width: 150,
                        height: 150,
                      ),
                      const Text('花',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      const Text('orange range',style: TextStyle(fontSize: 20,color: Colors.white),),

                    ],

                  ),
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image:const DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/31WY534C1FL._AC_.jpg'))),
                        width: 150,
                        height: 150,
                      ),
                      const Text('虹',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      const Text('福山雅治',style: TextStyle(fontSize: 20,color: Colors.white),),

                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdPage()));
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image:const DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T2/images/I/91mE2Meu3PL._AC_SL1500_.jpg'))),
                        width: 150,
                        height: 150,
                      ),
                      const Text('新時代',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                      const Text('Ado',style: TextStyle(fontSize: 20,color: Colors.white),),

                    ],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('カテゴリー',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                Icon(Icons.chevron_right,color: Colors.white,),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient:LinearGradientPainter(colors: <Color>[Colors.purple.shade600, Colors.purple.shade900, ]),


                        borderRadius: BorderRadius.circular(30),),
                      width: 150,
                      height: 80,
                      child: Text('クラシック',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient:LinearGradientPainter(colors: <Color>[Colors.yellow.shade600, Colors.yellow.shade900, ]),
                          borderRadius: BorderRadius.circular(30),color: Colors.pinkAccent),
                      width: 150,
                      height: 80,
                      child: Text('カントリー',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                    ),
                  ],
                ),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient:LinearGradientPainter(colors: <Color>[Colors.pink.shade600, Colors.purple.shade900, ]),
                        borderRadius: BorderRadius.circular(30),),
                      width: 150,
                      height: 80,
                      child: Text('ヒップホップ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient:LinearGradientPainter(colors: <Color>[Colors.blue.shade600, Colors.purple.shade900, ]),
                          borderRadius: BorderRadius.circular(30),color: Colors.yellow[800]),
                      width: 150,
                      height: 80,
                      child: Text('ポップ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                    ),
                  ],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient:LinearGradientPainter(colors: <Color>[Colors.red.shade600, Colors.purple.shade900, ]),
                          borderRadius: BorderRadius.circular(30),color: Colors.blue),
                      width: 150,
                      height: 80,
                      child: Text('ジャズ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient:LinearGradientPainter(colors: <Color>[Colors.brown.shade600, Colors.purple.shade900, ]),
                          borderRadius: BorderRadius.circular(30),color: Colors.orange),
                      width: 150,
                      height: 80,
                      child: Text('ロック',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                    ),
                  ],
                ),
              ],
            ),
          )


        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.grey[850],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),label: 'ホーム'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),label: '検索'),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add),label: 'プレイリスト'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),label: 'アカウント'),
        ],
        type: BottomNavigationBarType.fixed,

      )
      

    );
  }
}

