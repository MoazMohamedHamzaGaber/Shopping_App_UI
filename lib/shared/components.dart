import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/cubit/cubit.dart';
import 'package:flutter_projects/cubit/states.dart';
import 'package:flutter_projects/model/model_screen.dart';
import 'package:flutter_projects/modules/accessoires/accessoires_screen.dart';
import 'package:flutter_projects/modules/home_screen.dart';
import 'package:flutter_projects/modules/login.dart';
import 'package:flutter_projects/modules/shoes/shoes_screen.dart';
import 'package:flutter_projects/modules/summer_clothes/summer_clothes_screen.dart';
import 'package:flutter_projects/modules/trouser/trouser_screen.dart';
import 'package:flutter_projects/modules/winter_clothes/winter_clothes_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';


Widget buildGridVeiw(GradViewModel model, context) => BlocConsumer<AppCubit,AppStates>(
  listener: (context,state){
    if(state is InsertDatabaseStates)
    {
      Fluttertoast.showToast(
          msg: "The product is added to cart successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
  },
  builder: (context,state){
    //var profileModel=AppCubit.get(context).model;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Image(
                  image: AssetImage(
                    '${model.imageData}',
                  ),
                  height: 150,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Text(
                    'DISCOUNT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                '${model.name}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ج.م',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Text(
                  '${model.price}',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                 const Text(
                  'ج.م',
                  style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
                Text(
                  '${model.old_price}',
                  style: const TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),

                ),

              ],

            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.95),
              child: SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {
                    AppCubit.get(context).insertToDatabase(model);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(

                      fontWeight: FontWeight.bold,

                      color: Colors.white,

                    ),

                  ),

                ),

              ),

            ),

          ],

        ),

      ),

    );
  },
);

Widget buildAppBar({
   String title,
  context,
}) =>
    AppBar(
      backgroundColor: Colors.black,
      title: Text(title),
      actions: [
        // IconButton(
        //     onPressed: () {
        //       Navigator.pushAndRemoveUntil(
        //         context,
        //         MaterialPageRoute(builder: (context)=>LoginScreen()),
        //             (route) => false,
        //       );
        //     },
        //     icon: Icon(Icons.login)),
        // InkWell(
        //   onTap: (){
        //     Navigator.pushAndRemoveUntil(
        //       context,
        //       MaterialPageRoute(builder: (context)=>LoginScreen()),
        //           (route) => false,
        //     );
        //   },
        //     child: Icon(Icons.logout),
        // ),
        // SizedBox(
        //   width: 10,
        // ),
      ],
    );

Widget buildItem(ItemModel model) => Row(
      children: [
        Container(
          width: 80,
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('${model.image}'),
              ),
              Text(
                '${model.title}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );

Widget buildDrawer(context) => Drawer(
      backgroundColor: Colors.white38,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            accountName: Text(
              'Moaz Mohamed Hamza',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'moaz@gmail.com',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.orange,
              backgroundImage: AssetImage('assets/images/pic.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                    title: Text('Home'),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SummerClothesScreen()));
                    },
                    title: Text('Summer Clothes'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WinterClothesScreen()));
                    },
                    title: Text('Winter clothes'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrouserScreen()));
                    },
                    title: Text('Trouser'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoesScreen()));
                    },
                    title: Text('Shoes'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccessoiresScreen()));
                    },
                    title: Text('Accessoires'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Card(
                  color: Colors.grey,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    title: Text('LOGOUT'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
