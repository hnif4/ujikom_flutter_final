import 'package:flutter/material.dart';

class InfoDetailScreen extends StatefulWidget {
  final String judul;
  final String isi;
  final String tanggal;
  final int postId;

  InfoDetailScreen({
    required this.judul,
    required this.isi,
    required this.tanggal,
    required this.postId,
  });

  @override
  _InfoDetailScreenState createState() => _InfoDetailScreenState();
}

class _InfoDetailScreenState extends State<InfoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Informasi',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF40E0D0), // Tosca terang
                Color(0xFF20B2AA), // Tosca medium
                Color(0xFF008080), // Tosca gelap
              ],
            ),
          ),
        ),
        elevation: 6,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color(0xFFE0FFFF), // Tosca sangat muda
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title Section
                Text(
                  widget.judul,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF008080), // Tosca gelap
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 8),
                // Date Section
                Text(
                  'Tanggal: ${widget.tanggal}',
                  style: TextStyle(
                    color: Color(0xFF20B2AA), // Tosca medium
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 16),
                // Content Section
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xFFF0F8FF), // Soft light blue
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    widget.isi,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4A4A4A), // Dark grey
                      height: 1.6,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Extra Space for Aesthetic
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
