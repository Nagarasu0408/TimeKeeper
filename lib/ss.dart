import 'package:flutter/material.dart';
import 'package:splash3/main2.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569__480.jpg"),
              fit: BoxFit.contain,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          splashColor: Colors.greenAccent,
          child: IconButton(
            icon: Icon(Icons.outbound),
            splashColor: Colors.red,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Calculator()));
            },
          ),
        ),
      ),
    );
  }
}
