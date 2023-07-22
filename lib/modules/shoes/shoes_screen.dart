import 'package:flutter/material.dart';
import 'package:flutter_projects/shared/components.dart';

class ShoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'SHOES'),
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
                        children: [
                          Image.asset(
                            'assets/images/shoes/f3.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fill,
                          ),
                          Text('SHO22GLET25279TM1'),
                          Text(
                            '799.00',
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
                            'assets/images/shoes/f2.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fill,
                          ),
                          Text('SHO22SSUE25271TM1'),
                          Text(
                            '649.00',
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
                            'assets/images/shoes/q16.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fill,
                          ),
                          Text('Men\'s Gamma'),
                          Text(
                            '649.00',
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
                            'assets/images/shoes/d3.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fill,
                          ),
                          Text('Sir Corbett'),
                          Text(
                            '2899.00',
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
                            'assets/images/shoes/d4.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fill,
                          ),
                          Text('Romba Sport'),
                          Text(
                            '799.00',
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
                            'assets/images/shoes/f1.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fill,
                          ),
                          Text('SHO22GLET25279TM1'),
                          Text(
                            '799.00',
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
                            'assets/images/shoes/q13.png',
                            width: 160,
                            height: 250,
                            fit: BoxFit.fill,
                          ),
                          Text('AND1 Take Off 3.0 Men’s Basketball Shoes'),
                          Text(
                            '799.00',
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
