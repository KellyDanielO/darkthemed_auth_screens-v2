import 'package:auth_screens/constants/colors.dart';
import 'package:auth_screens/screens/login.dart';
import 'package:auth_screens/widgets/button.dart';
import 'package:auth_screens/widgets/custom_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: AppColors.color,
            ),
          ),
        ),
        leadingWidth: width * .1,
        centerTitle: false,
        title: const Text(
          'Sign up',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: AppColors.color,
          ),
        ),
      ),
      body: Container(
        width: width,
        height: height * .9,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 50),
              Text(
                'Sign up with one of the following options',
                style: TextStyle(
                  color: AppColors.color.withOpacity(.8),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: width * .4,
                    height: width * .13,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.color.withOpacity(.4),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('assets/images/1.png'),
                  ),
                  Container(
                    width: width * .4,
                    height: width * .13,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.color.withOpacity(.4),
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset('assets/images/2.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              CustomInput(
                hintText: 'John Doe',
                controller: nameController,
                isObsecure: false,
              ),
              const SizedBox(height: 20),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              CustomInput(
                hintText: 'kelly@gmail.com',
                controller: emailController,
                isObsecure: false,
              ),
              const SizedBox(height: 20),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              CustomInput(
                hintText: 'Enter your password',
                controller: passwordController,
                isObsecure: true,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Create Account',
                onPressed: () {},
                width: width,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: AppColors.color.withOpacity(.8),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: AppColors.color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


// Thanks for watching 
// Please like and subscribe
// source code link in the description