import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zent/screens/notification.dart';
import 'package:zent/screens/progresspath.dart';

class SelectInstitute extends StatefulWidget {
  const SelectInstitute({super.key});

  @override
  State<SelectInstitute> createState() => _SelectInstituteState();
}

class _SelectInstituteState extends State<SelectInstitute> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: Color(0xff2B9A9F),
          title: Center(
            child: Text(
              "              Welcome back!",
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
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '\nSelect your institute',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    TextSpan(
                      text:
                          '\n\nBy selecting your institute you can get \nyour access for he courses that you \nalready entrolled.\n',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 55, right: 55),
                child: GridB(),
              ),
            ],
          ),
        )),
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

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Tamil Academy",
      "images": "images/sun.png",
    },
    {
      "title": "Express Education",
      "images": "images/institute.png",
    },
    {
      "title": "Tamil Academy",
      "images": "images/institute.png",
    },
    {
      "title": "Express Education",
      "images": "images/sun.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return 
    
    GridView.builder(
      
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        // mainAxisSpacing: 12.0,
        mainAxisExtent: 160,
      ),
      itemCount: gridMap.length,
      
      
      itemBuilder: (_, index) {
        return Column(children: [Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Container(
              
              child:ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                child: Image.asset(
                  "${gridMap.elementAt(index)['images']}",
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                
              ),
              //  Text(
              //   "${gridMap.elementAt(index)['title']}",
              //   style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              // ),
              // TextButton(onPressed: (){}, child: Text( "${gridMap.elementAt(index)['title']}",
              //   style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15,),))
              
            
          ),),
           TextButton(onPressed: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProgressPath(),
                    ),
                  );}, child: Text( "${gridMap.elementAt(index)['title']}",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15,color: Colors.black45),),),
             
       ] );
      },
    );
  }
}
