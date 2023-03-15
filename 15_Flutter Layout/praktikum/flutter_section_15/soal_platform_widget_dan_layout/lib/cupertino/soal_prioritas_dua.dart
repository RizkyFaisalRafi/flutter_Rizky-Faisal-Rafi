import 'package:flutter/cupertino.dart';

class SoalPrioritasDua extends StatelessWidget {
  const SoalPrioritasDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Soal Prioritas 2 Cupertino',
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: Cupertino(),
    );
  }
}

class Cupertino extends StatelessWidget {
  const Cupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
          middle: const Text('CupertinoApp'),
        ),
        child: const Center(
          child: Text(
            'This is CupertinoApp',
          ),
        ));
  }
}
