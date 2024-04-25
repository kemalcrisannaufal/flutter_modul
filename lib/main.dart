import 'package:flutter/material.dart';
import 'additional.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextStyle profileTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  final TextStyle projectTextStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  final TextStyle gridTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          title: const Text('KCR', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          margin: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                "My Profile",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.indigo),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              const AssetImage('assets/images/foto.png'),
                          backgroundColor: Colors.indigo[900],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Kemal Crisannaufal", style: profileTextStyle),
                            Text("1301213133", style: profileTextStyle),
                            Text("IF-45-04", style: profileTextStyle),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 70,
                child: GridView.count(
                    primary: false,
                    crossAxisCount: 3,
                    childAspectRatio: 2.0,
                    padding: const EdgeInsets.all(4.0),
                    crossAxisSpacing: 10.0,
                    children: [
                      Container(
                        color: Colors.indigo[300],
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Project",
                              style: gridTextStyle,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.indigo[400],
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Portfolio",
                              style: gridTextStyle,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.indigo[500],
                        child: Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Blog",
                              style: gridTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 10),
              Text(
                "About Me",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.indigo),
                ),
                child: Text(
                    "Kemal Crisannaufal is a 6th-semester student S1 Informatics program at Telkom University. A committed and academically oriented student, possess problem solving skills and always strive to complete tasks well and with full responsibility.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w400,
                    )),
              ),
              const SizedBox(height: 10),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Education",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.indigo[900],
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      color: Colors.indigo[100],
                      child: ListTile(
                          title: Text(
                            "Telkom University",
                            style: profileTextStyle,
                          ),
                          subtitle:
                              Text("2021 - 2025", style: profileTextStyle),
                          leading: const Image(
                            image: AssetImage('assets/images/telyu.png'),
                          )),
                    ),
                    Container(
                      color: Colors.indigo[200],
                      child: ListTile(
                        title: Text(
                          "SMA Negeri 1 Jatinangor",
                          style: profileTextStyle,
                        ),
                        subtitle: Text("2018 - 2021", style: profileTextStyle),
                        leading: const Image(
                          image: AssetImage('assets/images/smanja.png'),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.indigo[300],
                      child: ListTile(
                        title: Text(
                          "SMP Negeri 1 Jatinangor",
                          style: profileTextStyle,
                        ),
                        subtitle: Text("2015 - 2018", style: profileTextStyle),
                        leading: const Image(
                          image: AssetImage('assets/images/nesaja.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Project",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                height: 240,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1.5,
                  children: [
                    Container(
                      color: Colors.indigoAccent.shade100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.sports_esports,
                              size: 30,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Chess Program",
                              style: projectTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.indigoAccent,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.local_parking,
                              size: 30,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Raedam Parking",
                              style: projectTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.indigoAccent,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.check_box_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "To Do List",
                              style: projectTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.indigoAccent.shade700,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.sports_soccer_sharp,
                              size: 30,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Maenball",
                              style: projectTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Contact",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.email,
                        color: Colors.indigo,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "kemalcrisannaufal@gmail.com",
                        style: profileTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.indigo,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "081221891720",
                        style: profileTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.indigo,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Bandung Indonesia",
                        style: profileTextStyle,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "Copyright © 2024 Kemalcrisannaufal",
                style: profileTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
