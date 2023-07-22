import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/cubit/cubit.dart';
import 'package:flutter_projects/cubit/states.dart';
import 'package:flutter_projects/shared/components.dart';
import 'package:fluttertoast/fluttertoast.dart';


class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){
        if(state is DeleteDatabaseStates)
        {
          Fluttertoast.showToast(
              msg: "Removed Successfully",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 5,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }
      },
      builder: (state,index)
      {
        var cart=AppCubit.get(context).cart;
        return ConditionalBuilder(
          condition: cart.isNotEmpty,
          builder: (context)=>Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              //titleSpacing: 50,
              centerTitle: true,
              title: const Text('My Cart',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            //appBar: buildAppBar(title: 'My Cart'),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context,index)=>buildCart(cart[index],context),
                    itemCount: cart.length,
                  ),

                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // GetBuilder<HomeController>(builder: (context) {
                          //   return Text(
                          //     _controller.totalPrice.toString(),
                          //     style: const TextStyle(
                          //         color: Colors.blue,
                          //         fontWeight: FontWeight.bold,
                          //         fontSize: 17),
                          //   );
                          // })
                          Text('999 EGP',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: MaterialButton(
                          onPressed: (){},
                          child: const Text('Check Out',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          fallback: (context)=>Center(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                leading: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new,
                    color: Colors.black,
                    //size: 20,
                  ),
                ),
                title: const Text('My Cart',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(image: AssetImage('assets/images/empty.png')),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Your Cart Is Empty',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Sorry, the keyword you entered cannot be found,  please check again or search with another keyword.',
                      style: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

}
Widget buildCart(Map model,context)=>BlocConsumer<AppCubit,AppStates>(
  listener: (context,state){},
  builder: (context,state)
  {
    var cubit=AppCubit.get(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 228, 228, 228),
              offset: Offset(2, 3),
              blurRadius: 5,
              spreadRadius: 0.1,
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Container(
              width: 120,
              height: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    '${model['image']}',
                  ),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 160,
                  child: Text(
                    '${model['title']}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '${model['price']} EGP',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 243, 243),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              cubit.minus();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.blue,
                                size: 15,
                              ),
                            ),
                          ),
                          Text('${cubit.counter}'),
                          InkWell(
                            onTap: () {
                              cubit.plus();
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 40),
                    IconButton(
                      onPressed: () {
                        AppCubit.get(context).deleteData(id: model['id']);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.blue,
                        size: 25,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  },
);