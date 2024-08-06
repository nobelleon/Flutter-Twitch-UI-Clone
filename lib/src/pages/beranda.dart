import 'package:flutter/material.dart';

import 'twitch_videos_page.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF6F30E0);
    return Scaffold(
        //backgroundColor: Color.fromARGB(255, 131, 72, 241),
        body: Stack(
      fit: StackFit.expand,
      children: [
        //------------------
        // Image Background
        //------------------
        Image.asset(
          'assets/img/bg.jpg',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome \nto Twitch',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: Center(
                  child: TextButton(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TwitchVideosPage(),
                        ),
                      );
                    },
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: const Center(
                  child: Text('Sign Up',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      )),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).dividerColor,
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
