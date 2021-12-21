import 'package:flutter/material.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key,this.message='About Screen'}) : super(key: key);

   final String message;
  @override
  Widget build(BuildContext context) {
    // ModalRoute? modalRoute = ModalRoute.of(context);
    // if(modalRoute != null){
    //   Map<String,dynamic> map = modalRoute.settings.arguments as Map<String,dynamic>;
    //   message =map['message'];
    // }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // nulook backbottom
        title: const Text('ABOUT',
        style: TextStyle(
          color: Colors.black
        ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        // لو انا بدي اعمل زر back
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios_new,
        //     color: Colors.black,
        //   ),
        //   color: Colors.red,
        //   onPressed: () => Navigator.pop(context)
        // ),

      ),
      body: Center(
        child: Text(message,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 26,
        ),),
      ),
    );
  }
}
