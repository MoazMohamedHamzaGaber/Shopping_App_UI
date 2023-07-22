// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_projects/cubit/cubit.dart';
// import 'package:flutter_projects/cubit/states.dart';
// import 'package:flutter_projects/modules/home_screen.dart';
// import 'package:flutter_projects/modules/login.dart';
//
// class RegisterScreen extends StatelessWidget {
//   var nameController = TextEditingController();
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var phoneController = TextEditingController();
//   var formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) => AppCubit(),
//       child: BlocConsumer<AppCubit, AppStates>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           var cubit = AppCubit.get(context);
//           return Scaffold(
//             body: Form(
//               key: formKey,
//               child: Center(
//                 child: SingleChildScrollView(
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       children: [
//                         Text(
//                           'Register',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 35,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         TextFormField(
//                           validator: (value) {
//                             if (value.isEmpty) return 'Please enter name';
//                           },
//                           controller: nameController,
//                           keyboardType: TextInputType.name,
//                           decoration: InputDecoration(
//                             labelText: 'User Name',
//                             border: OutlineInputBorder(),
//                             prefixIcon: Icon(Icons.person),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         TextFormField(
//                           validator: (value) {
//                             if (value.isEmpty) return 'Please enter email';
//                           },
//                           controller: emailController,
//                           keyboardType: TextInputType.emailAddress,
//                           decoration: InputDecoration(
//                             labelText: 'Email Address',
//                             border: OutlineInputBorder(),
//                             prefixIcon: Icon(Icons.mail_outline),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         TextFormField(
//                           validator: (value) {
//                             if (value.isEmpty) return 'Please enter password';
//                           },
//                           obscureText: cubit.obscureText,
//                           controller: passwordController,
//                           keyboardType: TextInputType.visiblePassword,
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             border: OutlineInputBorder(),
//                             prefixIcon: Icon(Icons.lock_outline),
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 cubit.changeObscureText();
//                               },
//                               icon: Icon(cubit.obscureText
//                                   ? Icons.visibility
//                                   : Icons.visibility_off),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 25,
//                         ),
//                         TextFormField(
//                           validator: (value) {
//                             if (value.isEmpty) return 'Please enter phone';
//                           },
//                           controller: phoneController,
//                           keyboardType: TextInputType.phone,
//                           decoration: InputDecoration(
//                             labelText: 'Phone',
//                             border: OutlineInputBorder(),
//                             prefixIcon: Icon(Icons.phone),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 25,
//                         ),
//                         Container(
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             color: Colors.blue,
//                           ),
//                           child: MaterialButton(
//                             onPressed: () {
//                               if (formKey.currentState.validate()) {
//                                 print(nameController.text);
//                                 print(emailController.text);
//                                 print(passwordController.text);
//                                 print(phoneController.text);
//                                 Navigator.pushAndRemoveUntil(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => HomeScreen()),
//                                     (route) => false);
//                               }
//                             },
//                             child: Text(
//                               'REGISTER',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Have an account?',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                               ),
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.pushAndRemoveUntil(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => LoginScreen()),
//                                     (route) => false);
//                               },
//                               child: Text(
//                                 'Login',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/cubit/cubit.dart';
import 'package:flutter_projects/cubit/states.dart';
import 'package:flutter_projects/modules/home_screen.dart';
import 'package:flutter_projects/modules/login.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterScreen extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var nameController=TextEditingController();
  var phoneController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state)
        {
          var cubit=AppCubit.get(context);
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/a3.jpg'),
                    fit: BoxFit.fill
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/av.png'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.name,
                            validator: (value)
                            {
                              if(value.isEmpty)
                              {
                                return 'Please Enter Username';
                              }
                            },
                            controller: nameController,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.person),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: (value)
                            {
                              if(value.isEmpty)
                              {
                                return 'Please Enter Email';
                              }
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.mail_lock_outlined),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            validator: (value)
                            {
                              if(value.isEmpty)
                              {
                                return 'Please Enter Password';
                              }
                            },
                            obscureText: cubit.obscureText,
                            controller: passwordController,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.lock_outline_rounded),
                              suffixIcon: IconButton(
                                onPressed: (){
                                  cubit.changeObscureText();
                                },
                                icon: Icon(cubit.obscureText? Icons.visibility: Icons.visibility_off),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            validator: (value)
                            {
                              if(value.isEmpty)
                              {
                                return 'Please Enter Phone';
                              }
                            },
                            controller: phoneController,
                            decoration: InputDecoration(
                              labelText: 'Phone',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.call),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white10,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: MaterialButton(onPressed: (){
                              if(formKey.currentState.validate())
                              {
                                Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(builder: (context)=>HomeScreen()),
                                      (route) => false,
                                );
                                print(emailController.text);
                                print(passwordController.text);
                                print(nameController.text);
                                print(phoneController.text);
                              }
                            },
                              child: const Text('SIGN UP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Have an account? ',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              MaterialButton(
                                onPressed: (){
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context)=>LoginScreen()),
                                        (route) => false,);
                                },

                                child: const Text('Login',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
