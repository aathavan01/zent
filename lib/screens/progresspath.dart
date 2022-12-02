import 'package:flutter/material.dart';

class ProgressPath extends StatefulWidget {
  const ProgressPath({super.key});

  @override
  State<ProgressPath> createState() => _ProgressPathState();
}

class _ProgressPathState extends State<ProgressPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color(0xff2B9A9F),
        title: Center(
          child: Text(
            "Progress Path",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.more))
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DefaultTabController(
                  length: 3, // length of tabs
                  // initialIndex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          labelColor: Color.fromARGB(255, 0, 0, 0),
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Tab(
                              text: 'Todo',
                            ),
                            Tab(text: 'Progress'),
                            Tab(text: 'Completed'),
                          ],
                        ),
                      ),
                      Container(
                        height: 400,
                        //height of TabBarView
                        decoration: BoxDecoration(),
                        child: TabBarView(
                          children: <Widget>[
                            Container(child: Todo()),
                            Container(
                              child: Center(
                                child: Text('Display Tab 2',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Container(
                              child: Completed()
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final List<Map<String, dynamic>> TodoList = [
    {
      "Title": "Node js crud functions Assignment : 02",
      "date": "Auguest 5th 2022",
      "Subject": "Programming Frameworks",
      "Status": "closed"
    },
    {
      "Title": "Node js crud functions Assignment : 02",
      "date": "Auguest 5th 2022",
      "Subject": "Programming Frameworks",
      "Status": "open"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(24),
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: ListTile(
                leading: Image.asset("images/sun.png"),
                title: Text("Node js crud functions Assignment : 02",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                subtitle: RichText(
                  
                  text: TextSpan(
                    
                    text: 'Auguest 5th 2022 ',
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Programming Frameworks',
                          style: TextStyle(fontWeight: FontWeight.w400)),
                      TextSpan(text: ' Closed'),
                    ],
                  ),
                ),
              ));
            }));
  }
}


class Completed extends StatefulWidget {
  const Completed({super.key});

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  final List<Map<String, dynamic>> CompletedList = [
    {
      "Title": "Node js crud functions Assignment : 02",
      "date": "Auguest 5th 2022",
      "Subject": "Programming Frameworks",
      "Status": "closed"
    },
    {
      "Title": "Node js crud functions Assignment : 02",
      "date": "Auguest 5th 2022",
      "Subject": "Programming Frameworks",
      "Status": "open"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(24),
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: ListTile(
                leading: Image.asset("images/sun.png"),
                title: Text("Node js crud functions Assignment : 02",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                subtitle: RichText(
                  
                  text: TextSpan(
                    
                    text: 'Auguest 5th 2022 ',
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Programming Frameworks',
                          style: TextStyle(fontWeight: FontWeight.w400)),
                      TextSpan(text: ' Closed'),
                    ],
                  ),
                ),
              ));
            }));
  }
}
