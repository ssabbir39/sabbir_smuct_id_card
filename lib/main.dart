import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 550,
          width: 350,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(3),),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://smuct.ac.bd/wp-content/uploads/2020/10/SMUCT-Logo-1-Converted.png',
                  scale: 3,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 130,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 3),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(

                          radius: 45,

                          foregroundImage: AssetImage('assets/sabbir.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Md.SAHARIA MAZUMDER SABBIR", style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                    SizedBox(height: 6,),
                    Text(
                      "ID: 201071039",
                      style: TextStyle(color: Colors.blueAccent,fontSize: 20),
                    ),
                    SizedBox(height: 6,),
                    Text(
                      "REG.NO.: 200007406",
                      style: TextStyle(color: Colors.blueAccent,fontSize: 20),
                    ),
                    SizedBox(height: 6,),
                    Text("Dept Of Computer Science & Engineering (B.Sc. CSE)", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 6,),
                    Text(
                      "Blood Group: B+",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(
                color: Colors.amber,
                thickness: 3,
              ),
              const Text(
                "Registrar",
                style: TextStyle(color: Colors.blueAccent,fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}