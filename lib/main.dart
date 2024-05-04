import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController _controller = TextEditingController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("6-amaliy ish"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 65,
              backgroundImage:
              AssetImage("images/img.png"),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child:  TextField(
                controller: controller,
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 2,
                      )),
                  errorText: "Maydonni to'ldiring!",
                  hintText: 'Bu yerga yozish mumkin'
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),

            ElevatedButton(
                onPressed: () {
                  _controller.text = controller.text;
                },
                child: const Text(
                  "Yuborish",
                )),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 2,
                      )),
                  errorText: "Maydonni to'ldiring!",
                ),
              ),
            ),


          ],
        ),

        bottomNavigationBar: Container(

            child:
            Theme(data: ThemeData(canvasColor: Colors.black54),
              child: BottomNavigationBar(
                backgroundColor: Colors.black54,
                fixedColor: Colors.red,
                currentIndex: currentIndex,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Color(0xFF9DB2CE),
                onTap:(index){
                  setState(() {
                    currentIndex=index;
                  });
                },
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
                  BottomNavigationBarItem(icon: Icon(Icons.wallet),label: "Wallet"),
                  BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: "Pie chart"),
                  BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
                ],
              ),
            )
        ),
      ),
    );
  }
}
