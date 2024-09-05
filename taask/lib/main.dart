import 'package:flutter/material.dart';
import 'package:taask/info_page.dart';
import 'package:taask/login.dart';
import 'package:taask/navbar.dart';
import 'package:taask/output_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Model class
class AndroidVersion {
  AndroidVersion({
    this.id,
    this.title,
  });

  int? id;
  String? title;
}

class MainPage extends StatelessWidget {
  get currentIndex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Flutter JSON Task'),
        foregroundColor: Colors.white,
      ),
      drawer: Navbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(Colors.cyan), // Change button color
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Change button color
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InfoPage(
                                          title: 'Output 1',
                                        )),
                              );
                            },
                            child: Text('Output 1')),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 100, 0, 0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(Colors.purple), // Change button color
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.white), // Change button color
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Output2(
                                          title: 'Output 2',
                                        )),
                              );
                            },

                            child:
                            Text('Output 2')) ,
                      ),
                    ],
                  ),
                ],

              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),


        ],
      ),
    );
  }
}
