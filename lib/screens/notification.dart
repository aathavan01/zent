import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final List<Map<String, dynamic>> NotificationsList = [
    {
      "title": "You have react lecture on today 9.00 am.",
      "images": "images/sun.png",
      "date": "2 Hours ago",
    },
    {
      "title": "You have english lecture on today 11.00 am.",
      "images": "images/institute.png",
      "date": "2 Hours ago",
    },
    {
      "title": "Please make your class fee before 10th Auguest 2022",
      "images": "images/sun.png",
      "date": "6 Hours ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                toolbarHeight: 80,

        backgroundColor: Color(0xff2B9A9F),
        title: Center(
          child: Text(
            "Notifications",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: ListView.builder(
          itemCount: NotificationsList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 219, 218, 216),
                  radius: 30.0,
                  child: ClipOval(
                    child: Image.asset(
                      "${NotificationsList.elementAt(index)['images']}",
                    ),
                  ),
                ),
                title: Text(
                  "${NotificationsList.elementAt(index)['title']}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black),
                ),
                subtitle: Text(
                  "${NotificationsList.elementAt(index)['date']}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Colors.black),
                ),
                trailing: IconButton(
                  onPressed: () {
                    NotificationsBottomSheet(context);
                  },
                  icon: const Icon(Icons.more_vert),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void NotificationsBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.delete_outline),
                  title: new Text('Delete'),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.mark_as_unread),
                title: new Text('Mark as unread'),
                onTap: () => {},
              ),
            
            ],
          ),
        );
      });
}
