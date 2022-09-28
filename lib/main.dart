import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Billed')),
            bottom: TabBar(
              tabs: [
                Container(
                  child: Column(
                    children: [
                     Tab(icon: Icon(Icons.store)),
                     Text('Online Store') 
                    ],
                  ),
                  decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(20)),
                   ),
                ),
                 Container(
                  child: Column(
                    children: [
                     Tab(icon: Icon(Icons.satellite)),
                     Text('Sale') 
                    ],
                  ),
                  decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(20)),
                   ),
                ),
                      Container(
                  child: Column(
                    children: [
                     Tab(icon: Icon(Icons.inventory_rounded)),
                     Text('Inventry') 
                    ],
                  ),
                  decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(20)),
                   ),
                ),
               
              ],
            ),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight:Radius.circular(20),
                     bottomLeft:Radius.circular(20))
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 420,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)
                            ),
                      ),
                      Icon(Icons.settings_accessibility)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 40,
                      child: Icon(Icons.settings),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '25 000.00',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                    const VerticalDivider(
              width: 20,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
                    Container(
                      height: 30,
                      width: 40,
                      child: Icon(Icons.settings),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          '25 000.00',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Cash',
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 400,
                  color: Color(0xfff7f0f0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                  itemBuilder: (BuildContext, index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 35,
                      child: Image.network('https://image.shutterstock.com/image-vector/teacher-woman-260nw-532686670.jpg'),
                    ),
                    // Container(
                    //   height: 40,
                    //   width: 40,
                    //   decoration: BoxDecoration(
                        
                    //     borderRadius: BorderRadius.circular(20),
                    //     image: DecorationImage(
                    //       image: NetworkImage('https://img.freepik.com/premium-vector/business-man-cartoon-character-smart-clothes-office-style_51635-5680.jpg?w=2000')
                    //     )
                      
                    //   ),
                     
                    // ),
                    Text('Designation')
                  ],
                ),
              )
            );
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(5),
                  scrollDirection: Axis.vertical,
                )
                  ),
                  
                ),
               
              ],
            ),
          )),
    );
  }
}
