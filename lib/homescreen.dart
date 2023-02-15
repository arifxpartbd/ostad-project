import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  MySnackBar (message, context){
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  MyAlartDialog (context){
    return showDialog(context: context,
        builder: (BuildContext context){
      return AlertDialog(
        title: Text('Exit App'),
        content: Text('Do you want to exit this app?'),
        actions: [
          ElevatedButton(onPressed: (){
            //SystemNavigator.pop();
            // if (Platform.isAndroid) {
            //   SystemNavigator.pop();
            // } else if (Platform.isIOS) {
            //   exit(0);
            // }

            if (defaultTargetPlatform == TargetPlatform.android) {
              SystemNavigator.pop();
            } else if (defaultTargetPlatform == TargetPlatform.iOS) {
              exit(0);
            }
          },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Yes')),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('No')),
        ],
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ostad Batch 2'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: 150,
                    child: Image.asset("assets/ostad.jpeg",fit: BoxFit.fill,)
                ),
                SizedBox(height: 10,),
                Text('khan arif'),
                ListTile(
                  onTap: (){
                    MySnackBar("Overview Button Click", context);
                  },
                  title: Text('OverView'),
                  leading: Icon(Icons.home_filled),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  onTap: (){
                    MySnackBar("My Course Click", context);
                  },
                  title: Text('My Course'),
                  leading: Icon(Icons.list),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  onTap: (){
                    MySnackBar("Class Recordings click", context);
                  },
                  title: Text('Class Recordings'),
                  leading: Icon(Icons.video_camera_back_rounded),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  onTap: (){
                    MySnackBar("Profile Button Click", context);
                  },
                  title: Text('Profile'),
                  leading: Icon(Icons.person_outlined),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  onTap: (){
                    MySnackBar("Logout Clicked", context);
                  },
                  title: Text('Logout'),
                  leading: Icon(Icons.logout),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            MyAlartDialog(context);
          },
          child: Text('Exit App'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        ),
      ),
    );
  }
}
