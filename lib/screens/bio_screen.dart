import 'package:bio_app/screens/about_screen.dart';
import 'package:bio_app/widgets/bio_card.dart';
import 'package:flutter/material.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('BIO',
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                // Navigator.pushNamed(
                //     context, '/about_screen',
                //     arguments: {'message': 'About Screen', 'number':10}
                //     );
                Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)=> AboutScreen(message: 'About App'),
                )
                );
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade300
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Spacer(), // Text in the bottom bage
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              const SizedBox(height: 15),
              const Text(
                'Manar Omar AbuDaqqa',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SariaCon',
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                  fontSize: 20,
                ),
              ),
              const Text(
                'Profile Picture - Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SariaCon',
                  letterSpacing: 2,
                  fontSize: 18,
                ),
              ),
              const Divider(
                color: Colors.white38,
                indent: 20,
                endIndent: 20,
                height: 30,
              ),
              BioCard(
                  leadingIcon: Icons.email,
                  title: 'Email',
                  subtitle: 'manardaqqa229@gmail.com',
                  trailingIcon: Icons.send,
                  marginBottom: 10,
                  onTap:()=> print('Send Email') ,
              ),
              BioCard(
                  leadingIcon: Icons.phone,
                  title: 'Mobile',
                  subtitle: '+970-592-362-822',
                  trailingIcon: Icons.call,
                  marginBottom: 10,
                  onTap: () => print('Call')
              ),
              Spacer(),
              const Text('Flutter Course'),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}


