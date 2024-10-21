// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:laboratorio7/DatabaseHelper.dart';

class AuditoriaScreen extends StatefulWidget {
  const AuditoriaScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuditoriaScreenState createState() => _AuditoriaScreenState();
}

class _AuditoriaScreenState extends State<AuditoriaScreen> {
  List<Map<String, dynamic>> _auditorias = [];
  final DatabaseHelper _dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _loadAuditorias();
  }

  Future<void> _loadAuditorias() async {
    final data = await _dbHelper.getAllAuditorias();
    setState(() {
      _auditorias = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de Auditorías'),
      ),
      body: ListView.builder(
        itemCount: _auditorias.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_auditorias[index]['accion']),
            subtitle: Text('ID: ${_auditorias[index]['id']}'),
          );
        },
      ),
    );
  }
}