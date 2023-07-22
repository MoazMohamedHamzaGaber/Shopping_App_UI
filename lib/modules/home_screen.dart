import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/cubit/cubit.dart';
import 'package:flutter_projects/cubit/states.dart';
import 'package:flutter_projects/model/list_model.dart';
import 'package:flutter_projects/modules/login.dart';
import 'package:flutter_projects/modules/shoes/shoes_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/polo_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/shirt_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/sport_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/t-shiet_screen.dart';
import 'package:flutter_projects/modules/winter_clothes/jacket_screen.dart';
import 'package:flutter_projects/shared/components.dart';

import 'cart/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text('Allahony Mall'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context)=>LoginScreen()),
                              (route) => false,
                        );
                      },
                      icon: Icon(Icons.login)),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
          drawer: buildDrawer(context),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(245, 245, 245, 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: const [
                                    Icon(Icons.search_rounded, color: Colors.grey),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Search",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child:  const Icon(Icons.add_shopping_cart,color: Colors.white,),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(10),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: const [
                        Image(
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/a.png',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Shopping',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          buildItem(itemModel[index]),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 15,
                      ),
                      itemCount: itemModel.length,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SportsScreen()));
                    },
                    child: Container(
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
                                  'assets/images/b.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Sports Swear',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                      childAspectRatio: 1 / 1.75,
                      children: List.generate(
                        model.length,
                        (index) => buildGridVeiw(model[index], context),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PoloScreen()));
                    },
                    child: Container(
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
                                  'assets/images/summer/polo/p2.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'POLO SHIRT',
                                  style: TextStyle(
                                    color: Colors.black,
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
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 1 / 1.75,
                      children: List.generate(
                        model6.length,
                        (index) => buildGridVeiw(model6[index], context),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TShirtScreen()));
                    },
                    child: Container(
                      color: Colors.grey[400],
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Card(
                          elevation: 10,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: const [
                              Image(
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/a6.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'T-Shirt',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                      childAspectRatio: 1 / 1.75,
                      children: List.generate(
                        model2.length,
                        (index) => buildGridVeiw(model2[index], context),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShirtScreen()));
                    },
                    child: Container(
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
                                  'assets/images/c5.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Flannel Shirt',
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
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 1 / 1.75,
                      children: List.generate(
                        model3.length,
                        (index) => buildGridVeiw(model3[index], context),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>JacketScreen()));
                    },
                    child: Container(
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
                                  'assets/images/c10.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'NIRVIK JACKET-BLACK',
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
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 1 / 1.75,
                      children: List.generate(
                        model4.length,
                        (index) => buildGridVeiw(model4[index], context),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoesScreen()));
                    },
                    child: Container(
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
                                  'assets/images/shoes/q14.png',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'FOOT WEAR SPARK',
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
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 1 / 1.75,
                      children: List.generate(
                        model5.length,
                        (index) => buildGridVeiw(model5[index], context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
