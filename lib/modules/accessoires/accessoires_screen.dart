import 'package:flutter/material.dart';
import 'package:flutter_projects/shared/components.dart';

class AccessoiresScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'ACCESSOIRES'),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: const [
                          Image(
                            image:
                                AssetImage('assets/images/accessoire/p2.png'),
                            width: 160,
                            height: 190,
                          ),
                          Text('WLT22GLET57132TM1'),
                          Text(
                            '220.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: const [
                          Image(
                            image:
                                AssetImage('assets/images/accessoire/p7.png'),
                            width: 160,
                            height: 190,
                          ),
                          Text('Tag Heuer'),
                          Text(
                            '249.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/accessoire/p3.png',
                            width: 160,
                            height: 190,
                          ),
                          Text('PERRV910008--80ML'),
                          Text(
                            '250.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/accessoire/p4.png',
                            width: 160,
                            height: 190,
                          ),
                          Text('WLT21GLET57100TM1'),
                          Text(
                            '299.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/accessoire/p5.png',
                            width: 160,
                            height: 190,
                          ),
                          Text('Rolex'),
                          Text(
                            '159.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/accessoire/p6.png',
                            width: 160,
                            height: 190,
                          ),
                          Text('PERRV910003-100ML'),
                          Text(
                            '199.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/accessoire/p9.png',
                            width: 160,
                            height: 190,
                          ),
                          Text('AirPods Max - Green'),
                          Text(
                            '1250.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/accessoire/p10.png',
                            width: 160,
                            height: 190,
                          ),
                          Text('WLT21GLET57100TM1'),
                          Text(
                            '299.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/accessoire/p11.png',
                            width: 160,
                            height: 190,
                          ),
                          Text('Mini Portable Bluetooth Earbuds'),
                          Text(
                            '1250.00',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
