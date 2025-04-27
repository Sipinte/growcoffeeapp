import 'package:flutter/material.dart';
import 'create_project_screen.dart';

class ProjectDetailScreen extends StatefulWidget {
  const ProjectDetailScreen({super.key});

  @override
  State<ProjectDetailScreen> createState() => _ProjectDetailScreenState();
}

class _ProjectDetailScreenState extends State<ProjectDetailScreen> {
  List<String> projects = [];

  void _addProject() async {
    final projectName = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (_) => const CreateProjectScreen()),
    );

    if (projectName != null && projectName.isNotEmpty) {
      setState(() {
        projects.add(projectName);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyek Saya'),
      ),
      body: projects.isEmpty
          ? Center(
        child: ElevatedButton.icon(
          onPressed: _addProject,
          icon: const Icon(Icons.add),
          label: const Text('Buat Proyek'),
        ),
      )
          : ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              title: Text(project),
              subtitle: const Text('Kalender penyiraman belum diatur'),
              leading: const Icon(Icons.agriculture),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // Aksi saat item diklik (misalnya navigasi ke detail)
              },
            ),
          );
        },
      ),
      floatingActionButton: projects.isNotEmpty
          ? FloatingActionButton(
        onPressed: _addProject,
        child: const Icon(Icons.add),
      )
          : null,
    );
  }
}
