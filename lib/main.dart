import 'package:apicalling2/model/model.dart';
import 'package:apicalling2/screens/screen1.dart';
import 'package:apicalling2/service/serviceapi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(


        primarySwatch: Colors.red,
      ),
      home: const Screen1(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
print('builddddddddd');
    return Scaffold(
      appBar: AppBar(
        title: Text('Api Calling'),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: futureAlbum(),
          builder: (context, snapshot) {

            if (snapshot.hasData)
            {

              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context,index)
                  {
                    snapshot.data![index].userid;
                    snapshot.data![index].id;

                    return ListTile(

                      title: Text(snapshot.data![index].id.toString(),
                      ),


                    );

                  },
              );
            }
            else if (snapshot.hasError)
            {
              print( 'ygyuserId');
              print(snapshot.error);

              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator(

            );
          }
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
