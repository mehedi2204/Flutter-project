import 'package:flutter/material.dart';
import 'package:list_view/extra_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View",
          style: TextStyle(fontFamily: "Estonia"),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context,index)=>Container(
                      margin: EdgeInsets.all(5),
                      height: 10,
                      width: 100,
                      child: ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("List $index")),
                            Image.network("https://raw.githubusercontent.com/mdmehedi2204/App-dev.-file/main/pexels-gradienta-7130545.jpg", height: 30,width: 30,),
                          ],
                        ),
                        tileColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        onTap: (){},
                        onLongPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ExtraPage()),
                        );
                        },
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 20,
                    itemBuilder: (context,index)=>Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: 50,
                      child: ListTile(
                        leading: IconButton(onPressed: (){}, icon: Icon(Icons.home),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.5)
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: Text("List $index")),
                            SizedBox(
                              height: 5,
                            ),
                            Image.network("https://raw.githubusercontent.com/mdmehedi2204/App-dev.-file/main/pexels-gradienta-7130545.jpg", height: 50, width: 40,),
                          ],
                        ),
                        tileColor: Colors.amber,
                        onTap: (){},
                        onLongPress: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ExtraPage()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
