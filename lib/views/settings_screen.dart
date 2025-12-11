import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: AppBar(title: Text("Settings")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // Profile Section
          _sectionTitle("Account"),
          _settingTile(
            icon: Icons.person_outline,
            title: "Profile Information",
            subtitle: "Edit name, email & phone",
            onTap: () {},
          ),
          _settingTile(
            icon: Icons.location_on_outlined,
            title: "Manage Address",
            subtitle: "Add or edit your delivery addresses",
            onTap: () {},
          ),

          const SizedBox(height: 25),



          // Help
          _sectionTitle("Help & Support"),
          _settingTile(
            icon: Icons.help_outline,
            title: "Help Center",
            subtitle: "FAQs, support",
            onTap: () {},
          ),
          _settingTile(
            icon: Icons.info_outline,
            title: "About Us",
            subtitle: "App version, terms, policy",
            onTap: () {},
          ),

          const SizedBox(height: 30),

          // Logout Button
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Section Title Widget
  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Normal Setting Tile
  Widget _settingTile({
    required IconData icon,
    required String title,
    String? subtitle,
    VoidCallback? onTap,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade50,
          child: Icon(icon, color: Colors.blue),
        ),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  // Switch Tile (Notifications, Dark Mode)
 
}