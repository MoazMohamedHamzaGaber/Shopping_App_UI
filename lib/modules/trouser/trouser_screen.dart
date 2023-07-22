import 'package:flutter/material.dart';
import 'package:flutter_projects/modules/home_screen.dart';
import 'package:flutter_projects/modules/trouser/jeans_screen.dart';
import 'package:flutter_projects/modules/trouser/pants_screen.dart';
import 'package:flutter_projects/shared/components.dart';

class TrouserScreen extends StatelessWidget {
  const TrouserScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'TROUSER'),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => JeansScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/trouser/jeans/t.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'JEANS',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PantsScreen()));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: const [
                      Image(
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/trouser/pants/t1.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'PANTS',
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
