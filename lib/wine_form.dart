import 'package:flutter/material.dart';
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
        title: const Text('Adicionar Vinho'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'rótulo do vinho',
                ),
                controller: labelEditController,
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'uva',
              ),
              controller: grapeEditController,
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'ano',
              ),
              controller: yearEditController,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                final newWine = Wine(
                  grape: grapeEditController.text,
                  label: labelEditController.text,
                  year: int.parse(yearEditController.text),
                );
                Navigator.of(context).pop(newWine);
              },
              child: const Text('Adicionar'),
            )
          ],
        ),
      ),
    );
  }
}
