import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC9DABF), // Set navbar color to match the box
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Profile"),
      ),
      body: Container(
        color: Color(0xFF9CA986), // Set background color to #9CA986
        child: Center(
          child: LayoutBuilder(
            builder: (context, constraints) {
              // If screen width is more than 600 (like a laptop), use 60% of the width
              // If screen width is less than 600 (like a phone), use 100% of the width with padding
              double width = constraints.maxWidth > 600 ? constraints.maxWidth * 0.6 : constraints.maxWidth * 0.9;

              return SingleChildScrollView(
                child: Container(
                  width: width,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Avatar bagian atas
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("assets/images/_MG_7334.JPG"),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Muhamad Rasya Yoga Firmansyah",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20.0),
                      // Kartu 'About'
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xFFC9DABF), // Set box color to #C9DABF
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Hello, my name is Muhamad Rasya Yoga Firmansyah or often called Rasya, also known as Yoga. My education level is vocational school, more precisely in the field of IT software developer. I was born in Bogor on July 5 2006. My hobby is sports, especially futsal. Apart from that, I also like the world of coding because that's where my imagination is developed. and I like solving problems if errors occur in coding...",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      // Kartu 'History'
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xFFC9DABF), // Set box color to #C9DABF
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "History",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "I attended elementary school at SDN Gadog 1, then continued my junior high school education at SMPN 1 Megamendung, after that I continued my vocational high school education at SMK Wikrama Bogor, specifically majoring in Software.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      // Kartu 'Skill' sesuai dengan gambar
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xFFC9DABF), // Set box color to #C9DABF
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Skills",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "During my time in software development I have understood several basic languages ​​including html, php, C++, python, Javascript. and the framework React, Laravel, Vue",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
