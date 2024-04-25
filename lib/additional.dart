import 'package:flutter/material.dart';

class AdditionalPage extends StatelessWidget {
  AdditionalPage({super.key});
  final List<String> entries = <String>[
    'Kemal Crisannaufal',
    '1301213133',
    'IF-45-04'
  ];
  final List<int> colorCodes = <int>[700, 400, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KCR',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          itemCount: entries.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.indigo[colorCodes[index]],
              child: Center(
                child: Text(
                  entries[index],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
