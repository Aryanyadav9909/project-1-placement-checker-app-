import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  TextEditingController nameController =
      TextEditingController(text: "Aryan Yadav");

  TextEditingController phoneController =
      TextEditingController(text: "+91 9876543210");

  TextEditingController emailController =
      TextEditingController(text: "student@gmail.com");

  TextEditingController courseController =
      TextEditingController(text: "MCA");

  TextEditingController addressController =
      TextEditingController(text: "Lucknow, Uttar Pradesh");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 25),

            // 👉 Editable Name
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: nameController,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // 👉 Details Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 8,
                  )
                ],
              ),
              child: Column(
                children: [

                  buildField(Icons.phone, "Phone Number", phoneController),
                  const Divider(),

                  buildField(Icons.email, "Email", emailController),
                  const Divider(),

                  buildField(Icons.school, "Course", courseController),
                  const Divider(),

                  buildField(Icons.location_on, "Address", addressController),

                ],
              ),
            ),

            const SizedBox(height: 30),

          ],
        ),
      ),
    );
  }

  Widget buildField(
      IconData icon, String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.blue),
        labelText: label,
        border: InputBorder.none,
      ),
    );
  }
}