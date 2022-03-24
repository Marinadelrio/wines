import 'package:flutter/material.dart';
import 'package:wines/wine.dart';
import 'package:wines/wine_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Wine> wines = [
    Wine(label: 'teste', grape: 'grape', year: 2020),
    Wine(label: 'outro', grape: 'uva', year: 2021)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wines'),
      ),
      body: ListView.builder(
        itemBuilder: (buildContext, index) {
          final Wine currentWine = wines[index];
          return ListTile(
            title: Text(currentWine.label),
            subtitle:
                Text(currentWine.grape + '\n' + currentWine.year.toString()),
            isThreeLine: true,
          );
        },
        itemCount: wines.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newWine = await Navigator.push(
              context, MaterialPageRoute(builder: ((context) => WineForm())));
          wines.add(newWine);
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
