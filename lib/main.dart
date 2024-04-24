import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextStyle profileTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.indigo,
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
        backgroundColor: const Color.fromARGB(255, 230, 237, 231),
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
                    physics: const NeverScrollableScrollPhysics(),
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
              Container(
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
                              Text("2019 - 2023", style: profileTextStyle),
                          leading: Image(
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
                        subtitle: Text("2019 - 2023", style: profileTextStyle),
                        leading: Image(
                          image: AssetImage('assets/images/smanja.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
