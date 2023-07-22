import 'package:flutter/material.dart';
import 'package:flutter_projects/model/list_model.dart';
import 'package:flutter_projects/shared/components.dart';

class ShirtScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'SHIRT'),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.grey[400],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 10,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: const [
                      Image(
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/summer/shirt/q1.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'SHIRT',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[300],
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                childAspectRatio: 1 / 1.65,
                children: List.generate(
                  shirt.length,
                  (index) => buildGridVeiw(shirt[index], context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
