import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';

class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});

  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  final notes = [
    {'title': 'Project Roadmap Q4', 'desc': 'Launch new architecture update and optimize cold startup time.', 'date': 'Today'},
    {'title': 'Book Notes: Atomic Habits', 'desc': 'Systems over goals. Environment design is the invisible hand.', 'date': 'Yesterday'},
    {'title': 'Travel Packing Essentials', 'desc': 'Passport, universal adapter, noise canceling earbuds.', 'date': 'Oct 09'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuickMemo • Notes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.stars_rounded, color: AppTheme.secondary),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notes.length,
        itemBuilder: (context, i) {
          final n = notes[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(n['title'] as String, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
                    Text(n['date'] as String, style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11)),
                  ],
                ),
                const SizedBox(height: 6),
                Text(n['desc'] as String, style: const TextStyle(color: Colors.white70, fontSize: 13)),
              ],
            ),
          );
        },
      ),
    );
  }
}
