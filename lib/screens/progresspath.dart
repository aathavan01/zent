import 'package:flutter/material.dart';
import 'package:zent/screens/notification.dart';
import 'package:zent/screens/selectInstitute.dart';

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
        toolbarHeight: 80,

        backgroundColor: Color(0xff2B9A9F),
        title: Center(
          child: Text(
            "Progress Path",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        actions: [
            IconButton(
                onPressed: () {
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>Notifications()),
                          );
                },
                icon: Icon(Icons.notifications_none_outlined)),
            IconButton(
                onPressed: () {
                  _SelectInstituteBottomSheet(context);
                },
                icon: Icon(Icons.more_vert)),
          ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(30),
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
                          height: double.maxFinite,
                          //height of TabBarView
                          decoration: BoxDecoration(),
                          child: TabBarView(
                            children: <Widget>[
                              Container(
                                child: Todo(),
                              ),
                              Container(
                                child: Center(
                                  child: Text('Display Tab 2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(child: Completed()),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

void _SelectInstituteBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.person_2_rounded),
                  title: new Text('Profile'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.bar_chart),
                title: new Text('Progress'),
                onTap: () => {},
              ),
              new ListTile(
                leading: new Icon(Icons.logout_outlined),
                title: new Text('Logout'),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final List<Map<String, dynamic>> TodoList = [
    {
      "title": "Node js crud functions Assignment : 02",
      "images": "images/sun.png",
      "date": "Auguest 5th 2022",
      "subject": "Programming Frameworks",
      "status": "Closed"
    },
    {
      "title": "Node js crud functions Assignment : 02",
      "images": "images/institute.png",
      "date": "Auguest 5th 2022",
      "subject": "Programming Frameworks",
      "status": "Open"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(14),
      child: ListView.builder(
        itemCount: TodoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading:  Image.asset( "${TodoList.elementAt(index)['images']}",),
              title: Text(
                "${TodoList.elementAt(index)['title']}",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black),
              ),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month),
                      Text(
                        "${TodoList.elementAt(index)['date']}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.book),
                      Text(
                        "${TodoList.elementAt(index)['subject']}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.alarm),
                      Text(
                        "${TodoList.elementAt(index)['status']}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.black),
                      )
                    ],
                  ),
                  
                ],
              ),
            ),
          );
        },
      ),
    );
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
      "title": "Node js crud functions Assignment : 02",
      "images": "images/sun.png",
      "date": "Auguest 5th 2022",
      "subject": "Programming Frameworks",
      "status": "Completed"
    },
    {
      "title": "Node js crud functions Assignment : 02",
      "images": "images/institute.png",
      "date": "Auguest 5th 2022",
      "subject": "Programming Frameworks",
      "status": "Completed"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(14),
        child: ListView.builder(
            itemCount: CompletedList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: ListTile(
                      leading: Image.asset( "${CompletedList.elementAt(index)['images']}"),
                      title: Text(
                        "${CompletedList.elementAt(index)['title']}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      subtitle: Column(children: [
                        Row(
                          children: [
                            Icon(Icons.calendar_month),
                            Text(
                              "${CompletedList.elementAt(index)['date']}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.book),
                            Text(
                              "${CompletedList.elementAt(index)['subject']}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            Text(
                              "${CompletedList.elementAt(index)['status']}",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],),),);
            },),);
  }
}
