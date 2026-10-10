import 'package:flutter/material.dart';

void main() {
  runApp(const HamrahApp());
}

class HamrahApp extends StatelessWidget {
  const HamrahApp({super.key});

  @override
  Widget build(BuildContext context) {
    const accent = Color(0xFF167D75);
    return MaterialApp(
      title: 'همراه',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: accent),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F7F8),
        fontFamily: 'Arial',
      ),
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.forum_rounded, color: Color(0xFF167D75)),
            SizedBox(width: 10),
            Text('همراه', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Container(
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: const Color(0xFF167D75),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.wifi_rounded, color: Colors.white, size: 34),
                    SizedBox(height: 14),
                    Text(
                      'ارتباط در شبکهٔ محلی',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'هدف همراه، پیام‌رسانی بین دستگاه‌های یک شبکهٔ وای‌فای یا LAN، حتی بدون اینترنت است.',
                      style: TextStyle(color: Colors.white, height: 1.7),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'قابلیت‌های برنامه',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const FeatureTile(
                icon: Icons.chat_bubble_outline_rounded,
                title: 'گفت‌وگوی خصوصی و گروهی',
                subtitle: 'در مرحلهٔ توسعه',
              ),
              const FeatureTile(
                icon: Icons.attach_file_rounded,
                title: 'ارسال فایل در شبکه',
                subtitle: 'در مرحلهٔ توسعه',
              ),
              const FeatureTile(
                icon: Icons.video_call_outlined,
                title: 'تماس صوتی و تصویری',
                subtitle: 'تماس گروهی تا ۵ نفر، نیازمند پیاده‌سازی و آزمایش',
              ),
              const SizedBox(height: 18),
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.amber.shade50,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.amber.shade200),
                ),
                child: const Text(
                  'این نسخه فقط رابط اولیه است؛ هنوز پیام‌ها را بین دستگاه‌ها ارسال نمی‌کند. ابتدا باید ارتباط واقعی داخل شبکه پیاده‌سازی و آزمایش شود.',
                  style: TextStyle(height: 1.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  const FeatureTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 9),
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFFE0F1EE),
          child: Icon(icon, color: const Color(0xFF167D75)),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
