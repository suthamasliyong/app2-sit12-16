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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                    width: 15
                ),
                ClipOval(
                  child: Image.asset("assets/pic.jpg",
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Text("1",
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                    Text("โพสต์")],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Text("67",
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                    Text("ผู้ติดตาม")],
                ),
                SizedBox(width: 25),
                Column(
                  children: [
                    Text("99",
                        style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                    Text("กำลังติดตาม")],
                ),
              ],
            ),
            SizedBox(height: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Suthamas Liyong",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 4),
                Text("นักศึกษาสาคาเทคโนโลยีสารสนเทศ"),
                Text("LOL")
              ],
            ),
            SizedBox(width: 8,height: 8,),
            Row(
              children: [
                Expanded(child: ElevatedButton(onPressed: () => {} ,
                  child: Text("ติดตาม"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)
                      )
                  ),
                )
                ),
                SizedBox(width: 35,height: 35),
                Expanded(
                    child: OutlinedButton(
                      onPressed: () => {},
                      child: Text("ข้อความ"),
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)
                      ),
                    )
                  )
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [

                  ],
                )
              ],
            )
              ]
            )
        ),
    );
  }
}
