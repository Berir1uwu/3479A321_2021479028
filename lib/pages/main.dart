import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  final Logger _logger = Logger();

  @override
  Widget build(BuildContext context) {
    _logger.i('Logger is working!');
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true, // Usa Material 3

        // Color de fondo de la aplicación
        scaffoldBackgroundColor: Colors.blueGrey[50], // Cambia este color al que prefieras

        // Esquema de colores
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink, 
          brightness: Brightness.light, 
          
        ),

        // Estilos de texto
        textTheme: TextTheme(
          displayLarge: GoogleFonts.merriweather(fontSize: 72, fontWeight: FontWeight.bold),
          titleLarge: GoogleFonts.merriweather(fontSize: 30, fontStyle: FontStyle.italic),
          bodyMedium: GoogleFonts.merriweather(fontSize: 16),
        ),

        // Configuración de la barra superior (AppBar)
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pinkAccent, // Cambia el color de la barra superior
          foregroundColor: Colors.white, // Cambia el color del texto y los iconos en la barra superior
          elevation: 0, // Elimina la sombra bajo la barra, si lo deseas
        ),
      ),
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
        title: Text(
          'Laboratorio Dos',
          style: Theme.of(context).textTheme.titleLarge, // Usa el estilo de texto del tema
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icon/MyIcon.svg',
              height: 60.0,
              width: 60.0,
            ),
            Text(
              'Has presionado el botón esta cantidad de veces:',
              style: Theme.of(context).textTheme.bodyMedium, // Usa el estilo de texto del tema
            ),
            const SizedBox(height: 10),
            Text(
              '$_counter',
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
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Disminuir',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reiniciar',
            child: const Icon(Icons.restore),
          ),
        ],
      ),
    );
  }
}

