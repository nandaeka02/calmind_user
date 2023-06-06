import 'package:calmind_user/configs/colors.dart';
import 'package:calmind_user/screens/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterAndLoginScreen extends StatefulWidget {
  const RegisterAndLoginScreen({super.key});

  @override
  State<RegisterAndLoginScreen> createState() => _RegisterAndLoginScreenState();
}

class _RegisterAndLoginScreenState extends State<RegisterAndLoginScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isLoginTab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    _tabController.addListener(_handleTabChange);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabChange() {
    setState(() {
      _isLoginTab = _tabController.index == 0;
    });
  }

  final _loginFormKey = GlobalKey<FormState>();
  final _registerFormKey = GlobalKey<FormState>();

  String first_name = '';
  String last_name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String phone_number = '';
  String address = '';
  String country = '';
  String city = '';
  String postal_code = '';
  DateTime birthDate = DateTime.now();
  String gender = '';
  String degree = '';
  String license_number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 37),
            width: double.infinity,
            height: 180,
            decoration: const BoxDecoration(
                color: Color(0xff6869ac),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  right: -25,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 230,
                      height: 130,
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 100,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 25,
                  top: 107,
                  child: Align(
                    child: SizedBox(
                      width: 183,
                      height: 40,
                      child: Text(
                        'CalMind',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          height: -0.8,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 25,
                  top: 156,
                  child: Align(
                    child: SizedBox(
                      width: 363,
                      height: 44,
                      child: Text(
                        'Mental Health Center',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          height: -3,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 2.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color(0xFF6869AC),
                  width: 1.5,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45.0),
                    child: Container(
                      margin: const EdgeInsets.only(right: 35, left: 35),
                      height: kToolbarHeight + -16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          color: const Color(0xFF000000),
                          width: 1,
                        ),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          color: const Color(0xFF6869AC),
                        ),
                        tabs: const [
                          Tab(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, bottom: 50, top: 35),
                    child:
                        _isLoginTab ? _buildLoginForm() : _buildRegisterForm(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _loginFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            autofocus: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: ConstantColors.primaryColor,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ConstantColors.primaryColor,
                  width: 1.5,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF8B8B8B),
                  width: 1.5,
                ),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            onSaved: (value) {
              email = value!;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
                color: ConstantColors.primaryColor,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ConstantColors.primaryColor,
                  width: 1.5,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF8B8B8B),
                  width: 1.5,
                ),
              ),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            onSaved: (value) {
              password = value!;
            },
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                ConstantColors.primaryColor,
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.symmetric(vertical: 10),
              ),
            ),
            onPressed: _login,
            child: const Text(
              'Log in',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterForm() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Form(
        key: _registerFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: ConstantColors.primaryColor,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ConstantColors.primaryColor,
                    width: 1.5,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8B8B8B),
                    width: 1.5,
                  ),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
              onSaved: (value) {
                email = value!;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: ConstantColors.primaryColor,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ConstantColors.primaryColor,
                    width: 1.5,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8B8B8B),
                    width: 1.5,
                  ),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              onSaved: (value) {
                password = value!;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(
                  color: ConstantColors.primaryColor,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ConstantColors.primaryColor,
                    width: 1.5,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8B8B8B),
                    width: 1.5,
                  ),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your password';
                }
                if (value != password) {
                  return 'Passwords do not match';
                }
                return null;
              },
              onSaved: (value) {
                confirmPassword = value!;
              },
            ),
            const SizedBox(height: 45),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  ConstantColors.primaryColor,
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(vertical: 10),
                ),
              ),
              onPressed: _register,
              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    final form = _loginFormKey.currentState;
    if (form!.validate()) {
      form.save();
      // Perform login logic here
      if ((email == "user@gmail.com") && (password == "123")) {
        // maka berhasil login
        print('Berhasil Login');
        // pindah ke halaman home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomBar(
              nPass: password,
              nEmail: email,
            ),
          ),
        );
      } else {
        print('Email atau password salah');
      }
    }
  }

  void _register() {
    final form = _registerFormKey.currentState;
    if (form!.validate()) {
      form.save();
      // Perform register logic here
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => RegisterAndLoginScreen(),
        ),
      );
    }
  }
}