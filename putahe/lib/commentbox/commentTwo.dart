import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class TestMeTwo extends StatefulWidget {
  @override
  _TestMeTwoState createState() => _TestMeTwoState();
}

class _TestMeTwoState extends State<TestMeTwo> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Road John',
      'pic':
          'https://i.pinimg.com/originals/26/72/64/267264df26a9be4326d11a902ef4d77b.png',
      'message': 'Amazing',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'John Smigla',
      'pic':
          'https://th.bing.com/th/id/R.e3442c3402cc8d638b56b69b95a75449?rik=s59Jv%2bYKCBEglQ&riu=http%3a%2f%2fgatton.uky.edu%2fsites%2fdefault%2ffiles%2fheadshots%2fheadshot_smigla-john.jpg&ehk=IoC7nDFasGLZH8rbp2wQ6aQkvw4r%2bD9zQ3%2bLSE5hW1s%3d&risl=&pid=ImgRaw&r=0',
      'message': 'Very cool',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Harold Leonardo',
      'pic':
          'https://s3.amazonaws.com/horancares/wp-content/uploads/2018/06/605744.jpg',
      'message': 'Wowwww... Amazing!',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Biggi Man',
      'pic':
          'https://th.bing.com/th/id/R.7c974424387016cf51d8868914065832?rik=jHIkHfWZ%2benZHw&riu=http%3a%2f%2fstatic.comicvine.com%2fuploads%2foriginal%2f13%2f132162%2f3401715-lsp_your_wearing_garbage_for_clothes!!!!!!!!.png&ehk=1cb8ns30nNmxiOMnAeFNavPLks%2bJX2dXifp1j5XC4I8%3d&risl=&pid=ImgRaw&r=0',
      'message': 'Yummhmmmy',
      'date': '2021-01-01 12:00:00'
    },
  ];

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comment Page"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath:
                  "https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146"),
          child: commentChild(filedata),
          labelText: 'Write a comment...',
          errorText: 'Comment cannot be blank',
          withBorder: false,
          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'Timmy John T. Pintor',
                  'pic':
                      'https://vignette.wikia.nocookie.net/disnick/images/9/9b/Profile_-_Timmy_Turner.jpg/revision/latest?cb=20190811024146',
                  'message': commentController.text,
                  'date': '2021-01-01 12:00:00'
                };
                filedata.insert(0, value);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.orangeAccent,
          textColor: Colors.white,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}
