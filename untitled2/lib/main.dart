import 'package:flutter/material.dart';

void main() {
  runApp( My());
}
class My extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
return MaterialApp(
title: 'GHGH',
home: Scaffold(
appBar: AppBar(
title: Text('Hello'),
),
body: Container(
child: Center(
child: Text('Press,$name'),
),
),
floatingActionButton: FloatingActionButton(
child: Icon(Icons.arrow_forward_ios),
onPressed: () {
setState(() {
print('Flutter');
name = "SDK";
print('$name');

});

},
),
),

);
  }
}



