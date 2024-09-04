import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: asuka.builder,
      navigatorObservers: [asuka.asukaHeroController],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AsukaExample(),
    );
  }
}

class AsukaExample extends StatelessWidget {
  const AsukaExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Asuka Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Alert'),
              onPressed: () => asuka.showSnackBar(asuka.AsukaSnackbar.alert('Este é um alerta!')),
            ),
            ElevatedButton(
              child: Text('Info'),
              onPressed: () => asuka.showSnackBar(asuka.AsukaSnackbar.info('Este é um informativo')),
            ),
            ElevatedButton(
              child: Text('Message'),
              onPressed: () => asuka.showSnackBar(asuka.AsukaSnackbar.message('Este é uma mensagem')),
            ),
            ElevatedButton(
              child: Text('Sucess'),
              onPressed: () => asuka.showSnackBar(asuka.AsukaSnackbar.success('Este é um sucesso')),
            ),
            ElevatedButton(
              child: Text('Warning'),
              onPressed: () => asuka.showSnackBar(asuka.AsukaSnackbar.warning('Este é um aviso')),
            ),
          ],
        ),
      ),
    );
  }
}
