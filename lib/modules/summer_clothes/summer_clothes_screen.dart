import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/summer_clothes/polo_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/shirt_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/short.dart';
import 'package:flutter_projects/modules/summer_clothes/sport_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/t-shiet_screen.dart';
import 'package:flutter_projects/shared/components.dart';

class SummerClothesScreen extends StatelessWidget {
  const SummerClothesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Summer Clothes'),
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
                            builder: (context) => SportsScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/summer/sport/sp.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'SPORTSWEAR',
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
                            builder: (context) => TShirtScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/summer/tshirt/s1.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'T-SHIRT',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PoloScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/summer/polo/s2.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'POLO',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShirtScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/summer/shirt/s3.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'SHIRT',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ShortScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/summer/short/s4.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'SHORT',
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
