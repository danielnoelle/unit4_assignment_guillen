import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit 4 - Assignment 6',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit 4 - Assignment 6',
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: const Color.fromARGB(255, 132, 133, 218),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('assets/me.jpg'),
                ),
                const SizedBox(width: 16),
                Text(
                  'Daniel Noel Guillen',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  _buildInfoRow(Icons.calendar_today, 'Birthdate', 'November 15, 2003'),
                  _buildInfoRow(Icons.location_on, 'Address','New Lucena, Iloilo, Philippines'),
                  _buildInfoRow(Icons.email, 'Email','danielnoel.guillen@wwsu.edu.ph'),
                  _buildInfoRow(Icons.phone, 'Phone Number', '099493929190'),
                  _buildInfoRow(Icons.school, 'Education','West Visayas State University'),
                  _buildInfoRow(Icons.book, 'Course','Bachelor of Science in Information Technology'),
                  _buildInfoRow(Icons.favorite, 'Hobbies','Reading, Playing and Sleeping'),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Biography',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'I am a passionate and curious individual with a love for exploring the intersection of technology and creativity. Currently pursuing a Bachelor of Science in Information Technology, I am constantly seeking new challenges and opportunities to learn and grow. My interests span a wide range, from coding and software development to sleeping, playing online games and reading. While I find immense satisfaction in the intricate details of building software, I also value the simplicity of everyday moments – a quiet evening at home, a breathtaking sunset, or a shared laugh with friends. These experiences fuel my creativity and remind me to appreciate the beauty in both the complex and the ordinary. I believe that technology has the power to transform lives, and I am driven to contribute to that transformation through innovative and user-centered solutions.  I am eager to collaborate with others, share my knowledge, and continue my journey of lifelong learning.',
                    style: GoogleFonts.poppins(),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                Text(
                  data,
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}