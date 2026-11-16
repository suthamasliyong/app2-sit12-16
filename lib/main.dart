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
        title: const Text('หน้าแรก'),
      ),
      body: Column(
        children:[
          Row(
            children: [
              ClipOval(
                child: Image.asset("assets/pic.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              ClipOval(
                child: Image.asset("assets/pic.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

            ],
          ),
          Row(
            children: [
              Expanded(child: ElevatedButton(onPressed: () => {} ,
                  child: Text("bottom"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurpleAccent,
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
                      child: Text("Botton2"),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent
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
