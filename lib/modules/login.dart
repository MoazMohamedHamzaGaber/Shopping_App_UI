// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_projects/cubit/cubit.dart';
// import 'package:flutter_projects/cubit/states.dart';
// import 'package:flutter_projects/modules/home_screen.dart';
// import 'package:flutter_projects/modules/register.dart';
//
// class LoginScreen extends StatelessWidget {
//   var formKey = GlobalKey<FormState>();
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
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
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 25,
//                     ),
//                     Text(
//                       'Login',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 40,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 25,
//                     ),
//                     TextFormField(
//                       validator: (value) {
//                         if (value.isEmpty) return 'Please Enter Valid Email';
//                       },
//                       controller: emailController,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         labelText: 'Email Adrress',
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.mail_outline),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 25,
//                     ),
//                     TextFormField(
//                       validator: (value) {
//                         if (value.isEmpty) return 'Please Enter Valid Password';
//                       },
//                       controller: passwordController,
//                       keyboardType: TextInputType.visiblePassword,
//                       obscureText: cubit.obscureText,
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.lock_outline),
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             cubit.changeObscureText();
//                           },
//                           icon: Icon(cubit.obscureText
//                               ? Icons.visibility
//                               : Icons.visibility_off),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 25,
//                     ),
//                     Container(
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.blue,
//                       ),
//                       child: MaterialButton(
//                         onPressed: () {
//                           if (formKey.currentState.validate()) {
//                             print(emailController.text);
//                             print(passwordController.text);
//                             Navigator.pushAndRemoveUntil(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => HomeScreen()),
//                                 (route) => false);
//                           }
//                         },
//                         child: Text(
//                           'LOGIN',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Don\'t have an account?',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pushAndRemoveUntil(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => RegisterScreen()),
//                                 (route) => false);
//                           },
//                           child: Text(
//                             'Register Now',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/cubit/cubit.dart';
import 'package:flutter_projects/cubit/states.dart';
import 'package:flutter_projects/modules/home_screen.dart';
import 'package:flutter_projects/modules/register.dart';
import 'package:fluttertoast/fluttertoast.dart';



class LoginScreen extends StatelessWidget {

  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){
      Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context)=>HomeScreen()),
            (route) => false,
      );

            Fluttertoast.showToast(
                msg: "Logged in successfully",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
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
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white10,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: MaterialButton(
                              onPressed: (){
                                if(formKey.currentState.validate())
                                  {
                                    Navigator.pushAndRemoveUntil(context,
                                      MaterialPageRoute(builder: (context)=>HomeScreen()),
                                          (route) => false,
                                    );
                                    print(emailController.text);
                                    print(passwordController.text);
                                  }
                            },
                              child: const Text('LOGIN',
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
                              const Text('Don\'t have an account? ',
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
                                    MaterialPageRoute(builder: (context)=>RegisterScreen()),
                                        (route) => false,);
                                },

                                child: const Text('Sign Up',
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
