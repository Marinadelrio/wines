import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wines/wine.dart';

class WineForm extends StatelessWidget {
  WineForm({Key? key}) : super(key: key);

  final labelEditController = TextEditingController();
  final grapeEditController = TextEditingController();
  final yearEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Vinho'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'rótulo do vinho',
                ),
                controller: labelEditController,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'uva',
              ),
              controller: grapeEditController,
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ano',
              ),
              controller: yearEditController,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                final newWine = Wine(
                  grape: grapeEditController.text,
                  label: labelEditController.text,
                  year: int.parse(yearEditController.text),
                );
                Navigator.of(context).pop(newWine);
              },
              child: Text('Adicionar'),
            )
          ],
        ),
      ),
    );
  }
}
