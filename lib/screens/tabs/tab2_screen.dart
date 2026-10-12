import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Action Checklists', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(leading: Icon(Icons.check_box, color: Colors.greenAccent), title: Text('Deploy sprint build to production', style: TextStyle(color: Colors.white70, decoration: TextDecoration.lineThrough))),
          ListTile(leading: Icon(Icons.check_box_outline_blank, color: Colors.white), title: Text('Review pull requests & merge updates', style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}
