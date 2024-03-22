import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    // Pre-cache images
    preCacheImages(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  void preCacheImages(BuildContext context) {
    precacheImage(const AssetImage('assets/images/gojo.jpg'), context);
    precacheImage(const AssetImage('assets/images/j1.jpg'), context);
    precacheImage(const AssetImage('assets/images/j2.jpg'), context);
    precacheImage(const AssetImage('assets/images/j3.jpg'), context);
    precacheImage(const AssetImage('assets/images/j4.jpg'), context);
    precacheImage(const AssetImage('assets/images/j5.jpg'), context);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool gif_widget=false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          "Anime",
          style: TextStyle(color: Colors.grey,fontSize:30),
        ).animate().fadeIn(delay: Duration(milliseconds:10)),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 600,
                  backgroundColor: Colors.black26,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/gojo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            colors: [
                              Colors.black26.withOpacity(.9),
                              Colors.black26.withOpacity(.3),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jujustu kaisen",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'Anime',
                                  fontWeight: FontWeight.bold,
                                ),
                              ).animate().fadeIn(),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "243 Chapter",
                                    style: TextStyle(color: Colors.grey[100]),
                                  ).animate().fadeIn(),
                                  const SizedBox(width: 60),
                                  Text(
                                    "48 Anime Episodes",
                                    style: TextStyle(color: Colors.grey[100]),
                                  ).animate().moveX()
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "It has been serialized in Shueisha's shōnen manga magazine Weekly Shōnen Jump since March 2018, with its chapters collected and published in 25 tankōbon volumes as of January 2024. The story follows high school student Yuji Itadori as he joins a secret organization of Jujutsu Sorcerers to eliminate a powerful Curse named Ryomen Sukuna",
                              style: TextStyle(color: Colors.grey),
                            ).animate()
                                .fadeIn(), // shader can be combined with other effects,
                            const SizedBox(height: 40),


                            //manga
                            Container(width:500, child:Text("Manga",style:TextStyle(fontSize:20),),color:Colors.grey[700],),
                            const SizedBox(height: 20),
                            Text(
                              "Written By",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text("Gege Akutami", style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 30),
                            Text(
                              "Original run",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text("March 5, 2018 – present", style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 30),
                            Text(
                              "Volumnes",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text("25", style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 30),

                            //manga
                           GestureDetector(
                             onDoubleTap:(){
                               setState(() {
                                 gif_widget=!gif_widget;
                               });
                             },
                             child: Container(width:500, child:Text("Anime",style:TextStyle(fontSize:20),),color:Colors.grey[700],),
                           ),
                            const SizedBox(height: 20),
                            Text(
                              "Written By",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text("	Hiroshi Seko", style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 30),
                            Text(
                              "Original run",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text("October 3, 2020 \nDecember 28, 2023", style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 30),
                            Text(
                              "Episodes",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text("48", style: TextStyle(color: Colors.grey)),
                            const SizedBox(height: 30),


                            Text(
                              "Genre",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Adventure, Dark fantasy, Supernatural",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(height: 40),
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  makeVideo("assets/images/j1.jpg"),
                                  makeVideo("assets/images/j2.jpg"),
                                  makeVideo("assets/images/j3.jpg"),
                                  makeVideo("assets/images/j4.jpg"),
                                  makeVideo("assets/images/j5.jpg"),
                                  makeVideo("assets/images/j1.jpg")
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            gif_widget?
            Positioned(child:Image.asset('assets/gif/j2.gif')):Text(""),
            Positioned.fill(
                bottom:50,
                child:Container(
                  width:100,
                  child:Align(
                    alignment:Alignment.bottomCenter,
                    child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[700], // Background color
                        onPrimary: Colors.white, // Text color
                        elevation: 3, // Elevation (shadow)
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Button border radius
                        ),
                      ),
                      onPressed:(){},
                      child:Container(
                        width: 300,
                        padding:EdgeInsets.only(left: 110),
                        child:Text("Read Manga",style:TextStyle(color:Colors.white),)
                      )
                    ),
                  ),

            ))
          ],

        ),
      ),
    );
  }

  Widget makeVideo(image) {
    return AspectRatio(
      aspectRatio: 1.8 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Colors.black26.withOpacity(.2),
                Colors.black.withOpacity(.4)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
