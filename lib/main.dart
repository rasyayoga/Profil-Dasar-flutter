import 'package:flutter/material.dart';
import 'page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/IMG_4967.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white.withOpacity(0.9),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Form Data",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              labelText: 'Nama',
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            controller: roleController,
                            decoration: InputDecoration(
                              labelText: 'Role',
                              prefixIcon: Icon(Icons.work),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            controller: descriptionController,
                            decoration: InputDecoration(
                              labelText: 'Deskripsi',
                              prefixIcon: Icon(Icons.description),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            controller: schoolController,
                            decoration: InputDecoration(
                              labelText: 'Sekolah',
                              prefixIcon: Icon(Icons.school),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                // Simulasi login sederhana
                                String name = nameController.text;
                                String role = roleController.text;
                                String description = descriptionController.text;
                                String school = schoolController.text;

                                if (name.isNotEmpty &&
                                    role.isNotEmpty &&
                                    description.isNotEmpty &&
                                    school.isNotEmpty) {
                                  // Jika login berhasil, arahkan ke halaman home dengan data yang diinput
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage(
                                              name: name,
                                              role: role,
                                              description: description,
                                              school: school,
                                            )),
                                  );
                                } else {
                                  // Jika login gagal, tampilkan pesan error
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text('Form Gagal Diisi'),
                                      content: Text(
                                          'Please fill in all fields correctly'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: const Color.fromARGB(255, 45, 235, 58),
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final String school;

  const HomePage(
      {super.key,
      required this.name,
      required this.role,
      required this.description,
      required this.school});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/IMG_4967.jpg"),
          fit: BoxFit.cover,
        )),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color(0xFF9CA986).withOpacity(0.9),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage("assets/images/a.JPG"),
                    ),
                    Text(name,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text(
                      "Role: $role",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(248, 255, 255, 255)),
                    ),
                    Text(
                      "Deskripsi: $description",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(248, 255, 255, 255)),
                    ),
                    Text(
                      "Sekolah: $school",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(248, 255, 255, 255)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page2()),
                        );
                      },
                      child: Text("See More"),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
