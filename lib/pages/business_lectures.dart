import 'package:application1/pages/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Business extends StatefulWidget {
  const Business({super.key});

  @override
  State<Business> createState() => _HomePageState();
}

class _HomePageState extends State<Business> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height / 5),
        child: Container(
          decoration: BoxDecoration(
            color: HexColor('BDFAC0'),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SideBar()));
                        },
                        icon: const Icon(
                          Icons.menu,
                          size: 40,
                        ))),
                Center(
                  child: Text(
                    "Search Lectures",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "JotiOne",
                        color: HexColor('0B720F')),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width / 12, right: size.width / 12),
                  child: TextField(
                      controller: SearchController(),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Lectures',
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      )),
                ),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 3),
            ]),
            height: size.height / 14,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: HexColor('29C21C'), shape: BoxShape.circle),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Available",
                        style:
                            TextStyle(color: HexColor('29C21C'), fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Unavailable",
                          style: TextStyle(
                              color: HexColor('EA6505'), fontSize: 20),
                        )
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ExpansionTile(
            title: const Text("Department of management"),
            collapsedBackgroundColor: HexColor('DFECDF'),
            children: [
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L20.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Thilini De Silva",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Dean",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Faculty of Business",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L16.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "ms.Thamodya Ediriweera",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Probationary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Mangement",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L17.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Shehani Joseph",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Probationary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Management",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L18.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Dilki Hansika",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Management",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L19.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Prasanna Perera",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Management",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L35.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Bhasuri Bhagyani",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Senior Lecturer/HOD",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Management",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L36.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Aushadharie Kaushalya",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Management",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L37.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Chandimma Yapa",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Management",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: const Text("Accounting and finance"),
            collapsedBackgroundColor: HexColor('DFECDF'),
            children: [
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L21.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms Anne Pathiranage",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L22.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Maithri Chandima",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Senior Lecture",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L23.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Narmada Balasooriya",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L24.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Dupadee Gamage",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L25.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Tharani Sooriyaarachchi",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L26.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Gishan Abhayagunarathne",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L27.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Rhythmani Perera",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L28.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Gimhani Rangalla",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L29.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Charmain Patrick",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Finance",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L30.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Kalani Peris",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Financeg",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L31.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Dinusha Sathsarani",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Accounting and Financeg",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: const Text("Marketing and tourism"),
            collapsedBackgroundColor: HexColor('DFECDF'),
            children: [
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L32.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Venura Colambage",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "HOC/Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Marketing and Tourism",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L33.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Lasitha De Silva",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Marketing and Tourism",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L34.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Janith Iddawala",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Marketing and Tourism",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: const Text("Operations and logistics"),
            collapsedBackgroundColor: HexColor('DFECDF'),
            children: [
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L38.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Shaja Musthaffa",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "HOC/Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Operations and Logistics",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L39.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Rekha Kulasekara",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Operations and Logistics",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L40.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Praveen Ranaveera",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Operations and Logistics",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L41.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Maleesha Edirisinghe",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Operations and Logistics",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: const Text("Economics and decision Sciences"),
            collapsedBackgroundColor: HexColor('DFECDF'),
            children: [
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L42.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Mr.Kasun Dissanayake",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "HOD/Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Economics and Dicision Science",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L43.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Sunari Bandara",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Economics and Dicision Science",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L44.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Tharushi Piyumalee",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Economics and Dicision Science",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L45.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Arani Rodrigo",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Economics and Dicision Science",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/46.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Shashini Gayanika",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Economics and Dicision Science",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: const Text("Legal Studies"),
            collapsedBackgroundColor: HexColor('DFECDF'),
            children: [
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L47.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Prof.Shanthi Segarajasihgham",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Professor in Law",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Legal Studies",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L48.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Samithri Wanniachy",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of Legal Studies",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ExpansionTile(
            title: const Text("English and modern languages"),
            collapsedBackgroundColor: HexColor('DFECDF'),
            children: [
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L49.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Piyumi Wickramasinghe",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "HOD/Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L50.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Gayanthi Mendis",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "HOD/Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L51.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Natasha Chamba",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Senior Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L52.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Janadi Chathurya",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L53.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Isuri Caldera",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L54.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Imasha Adihetti",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L55.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Nethmi Udara",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L56.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Roshini Samarasinghe",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L57.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Fairoza Fairooz",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporary Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(blurRadius: 3),
                      ]),
                  height: size.height / 5,
                  width: size.width / 10 * 9.5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/L58.png",
                          height: size.height / 6,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 28,
                                  color: HexColor('29C21C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Ms.Ashani Jayasundara",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Temporaray Lecturer",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "Department of English and Modern Languages",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
