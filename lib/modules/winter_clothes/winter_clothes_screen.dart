import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/home_screen.dart';
import 'package:flutter_projects/modules/winter_clothes/jacket_screen.dart';
import 'package:flutter_projects/modules/winter_clothes/pullover_screen.dart';
import 'package:flutter_projects/modules/winter_clothes/sweat_shirt_screen.dart';
import 'package:flutter_projects/shared/components.dart';

class WinterClothesScreen extends StatelessWidget {
  const WinterClothesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Winter Clothes'),
      drawer: buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Card(
                elevation: 10,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SweatShirtScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/winter/sweatshirt/w.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'SWEATSHIRT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PulloverScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/winter/pullover/w1.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'PULLOVER',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JacketScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/winter/jacket/w2.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'JACKET',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
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
    );
  }
}
