import 'package:flutter/material.dart';
import 'package:ventry/app_initialization.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: unused_field
  late Future<void> _appInitialize;

  @override
  void initState() {
    super.initState();
    _appInitialize = AppInitialization.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(),
    );
  }
}
