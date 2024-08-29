import 'package:flutter/material.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink, // Mantener el color de la barra superior
        title: const  Text('ProyectoFlutterJaviera'), // Mantener el título de la barra superior
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const Text(
              'Has presionado el botón esta cantidad de veces:', // Nuevo texto
              style: TextStyle(fontSize:14.0),
            ),
            const SizedBox(height: 10), // Espacio entre los textos
            Text(
              '$_counter', // Mantener el mensaje de Ingles a Español
              style: const TextStyle(fontSize: 48.0),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _resetCounter, // Cambiar la funcionalidad del botón flotante
            tooltip: 'Reset',
            child: const Icon(Icons.restore), // Cambiar el icono del botón flotante
          ),
        ],
      ),
    );
  }
}