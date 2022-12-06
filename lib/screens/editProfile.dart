import 'package:flutter/material.dart';
import 'package:zent/screens/Common/notification.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _firstName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff2B9A9F),
        title: const Center(
          child: Text(
            "My Profile",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()),
                );
              },
              icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(
              onPressed: () {
                // ZentProfileBottomSheet(context);
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepPurple[50]),
            child: Column(
              children: [
                Center(child: Icon(Icons.person_2_outlined), heightFactor: 4),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          // mainAxisAlignment:MainAxisAlignment.start ,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
        
                          children: [
                            Text(
                              "First Name",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.person_2_outlined),
                                // hintText: "First Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              controller: _firstName,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          // mainAxisAlignment:MainAxisAlignment.start ,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
        
                          children: [
                            Text(
                              "Last Name",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.person_2_outlined),
                                // hintText: "First Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              controller: _firstName,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          // mainAxisAlignment:MainAxisAlignment.start ,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
        
                          children: [
                            Text(
                              "Contact Number",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.person_2_outlined),
                                // hintText: "First Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              controller: _firstName,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          // mainAxisAlignment:MainAxisAlignment.start ,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
        
                          children: [
                            Text(
                              "Address",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                // prefixIcon: Icon(Icons.person_2_outlined),
                                // hintText: "First Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              controller: _firstName,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Save"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff2B9A9F),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
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
