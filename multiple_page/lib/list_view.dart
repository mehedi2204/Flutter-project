import 'package:flutter/material.dart';
import 'package:multiple_page/tab_bar.dart';

class Listview extends StatefulWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.grey.shade700,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "Tab Bar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tab_bar(),
                  ),
                  );
                },
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 2",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 3",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 4",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 5",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 6",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 7",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 8",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 9",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 10",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 11",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 12",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 13",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 14",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 15",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 16",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.lightBlueAccent,
            child: Center(
              child: RaisedButton(
                child: const Text(
                  "List 17",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                color: Colors.amber.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
