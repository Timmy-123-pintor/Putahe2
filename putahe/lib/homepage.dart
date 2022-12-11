//ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:like_button/like_button.dart';
import 'package:putahe/commentbox/commentThree.dart';
import 'commentbox/commentFour.dart';
import 'commentbox/commentOne.dart';
import 'commentbox/commentTwo.dart';
import 'navBar.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  //use this controller to get what the user typed
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: NavBar(),
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 156,
            flexibleSpace: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                  color: Color.fromARGB(255, 242, 174, 39),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(60),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Find Something",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.0)),
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic_none),
                    ),
                  ),
                ))),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            TextField(
              controller: _textController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "What's New?",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0)),
                  prefixIcon: Icon(Icons.edit),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 10.0,
                    onPressed: () {},
                    color: Colors.grey.shade100,
                    child: const Text("Photo",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0)),
                    elevation: 10.0,
                    onPressed: () {},
                    color: Colors.grey.shade100,
                    child: const Text("Video",
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            //profile
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://wallpaperaccess.com/full/1555663.jpg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Earl Michael Filosopo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 260),
              child: Column(
                children: [
                  Text("Looks Tasty"),
                ],
              ),
            ),
            //first container
            Column(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://nutriasia.com/wp-content/uploads/2017/10/pancit-bihon.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 6.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        //reaction
                        child: LikeButton(
                          likeCount: 199,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Center(
                        //comment
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          elevation: 5.0,
                          minWidth: 100,
                          height: 40,
                          color: Colors.white,
                          child: const Text('Comment',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey)),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TestMe()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      LikeButton(
                        //share
                        likeBuilder: (isTapped) {
                          return Icon(
                            Icons.share,
                            color:
                                isTapped ? Colors.green.shade400 : Colors.grey,
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Timmy John Pintor",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //container 2
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://cuban.recipes/wp-content/uploads/2019/10/grilled-fish-fillet.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    //react 2
                    color: Colors.white,
                    child: LikeButton(
                      likeCount: 9,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Center(
                    child: MaterialButton(
                      //comment 2
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      elevation: 5.0,
                      minWidth: 100,
                      height: 40,
                      color: Colors.white,
                      child: const Text('Comment',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TestMeTwo()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  LikeButton(
                    //share 2
                    likeBuilder: (isTapped) {
                      return Icon(
                        Icons.share,
                        color: isTapped ? Colors.green.shade400 : Colors.grey,
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://wallpaperaccess.com/full/1555663.jpg'))),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Earl Michael Filosopo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 100),
              child: Column(
                children: [
                  Text("Just started cooking in Putahe today!"),
                ],
              ),
            ),
            //container 3
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.etimg.com/photo/msid-66631233,quality-100/pork1.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    //react 3
                    color: Colors.white,
                    child: LikeButton(
                      likeCount: 19,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Center(
                    //comment 3
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      elevation: 5.0,
                      minWidth: 100,
                      height: 40,
                      color: Colors.white,
                      child: const Text('Comment',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TestMeThree()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  //share 3
                  LikeButton(
                    likeBuilder: (isTapped) {
                      return Icon(
                        Icons.share,
                        color: isTapped ? Colors.green.shade400 : Colors.grey,
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.NGZUtk2_3hcN9LI2xxnJrQHaEK?pid=ImgDet&rs=1'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Ella Punay",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 260),
              child: Column(
                children: [
                  Text("Fried Rice"),
                ],
              ),
            ),
            //container 4
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://th.bing.com/th/id/R.9ebac021e22891d1317cc35f0a15dfc9?rik=2bWJze1wYicVEw&riu=http%3a%2f%2fwww.gimmesomeoven.com%2fwp-content%2fuploads%2f2012%2f11%2fpork-fried-rice-1.jpg&ehk=9weuC12ojX5GCujMxbuaHrQ6X4WMNCPIcfdbLdGi5x0%3d&risl=&pid=ImgRaw&r=0'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    //react 4
                    color: Colors.white,
                    child: LikeButton(
                      likeCount: 99,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Center(
                    child: MaterialButton(
                      //comment 4
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      elevation: 5.0,
                      minWidth: 100,
                      height: 40,
                      color: Colors.white,
                      child: const Text('Comment',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TestMeFour()));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  LikeButton(
                    //share 4
                    likeBuilder: (isTapped) {
                      return Icon(
                        Icons.share,
                        color: isTapped ? Colors.green.shade400 : Colors.grey,
                      );
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
