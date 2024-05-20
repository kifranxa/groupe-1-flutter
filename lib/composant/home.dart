import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String msg= "welcome";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("§{msg}"),
            ElevatedButton(
                onPressed: () {

                },
                child: Text("connecxion"))
          ],
        ),
      ),
    );
  }
}
