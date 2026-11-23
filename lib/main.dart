import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my_social_profile'),
        actions: [
          Icon(
            Icons.menu,
            size: 100,
            color: Colors.white24,
          ),
          Icon(Icons.menu)
        ],
      ),
      body: Column(
        children:[
          Row(
            children: [
              ClipOval(
                child: Image.asset("assets/pic.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 55,
                height: 100,
              ),
              Text("1",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800
                ),
              ),
              SizedBox(
                width: 55,
                height: 100,
              ),
              Text("67",
                style: TextStyle(
                    fontSize: 24,
                  fontWeight: FontWeight.w800
                ),
              ),
              SizedBox(
                width: 55,
                height: 100,
              ),
              Text("99",
                style: TextStyle(
                fontSize: 24,
                    fontWeight: FontWeight.w800
              ),
              ),
              Expanded(child:
              Column(
                  children: [
                    Text("99")
                  ]
              ),
              ),
            ],
          ),
          Column(
            children: [
              Text("Suthamas Liyong"),
              Text("นักศึกษาสาคาเทคโนโลยีสารสนเทศ")
            ],
          ),
          Row(
            children: [
              Expanded(child: ElevatedButton(onPressed: () => {} ,
                  child: Text("ติดตาม"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25)
                    )
                  ),
              )
              ),
              SizedBox(
                width: 20,
                height: 100,
              ),
              Expanded(
                  child: OutlinedButton(
                      onPressed: () => {},
                      child: Text("ข้อความ"),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                  )
              )
            ],
          )
        ]
        ),
    );
  }
}
