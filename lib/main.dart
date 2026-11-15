
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const ZetsuApp());
}

class ZetsuApp extends StatelessWidget {
  const ZetsuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zetsu13YT',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF101310),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF71845A),
          brightness: Brightness.dark,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> openYoutube() async {
    final uri = Uri.parse('https://www.youtube.com/@Zetsu13YT');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ZETSU13YT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.eco,
                size: 100,
                color: Color(0xFF71845A),
              ),
              const SizedBox(height: 20),
              const Text(
                'Zetsu13YT',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Seu universo de jogos mobile!',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: openYoutube,
                icon: const Icon(Icons.play_arrow),
                label: const Text('ACESSAR MEU CANAL'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
