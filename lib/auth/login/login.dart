import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:school_app/auth/service/login_provider.dart';
import 'package:school_app/constants/constants.dart';
import 'package:school_app/constants/themeprovider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final themeprovider = context.read<Themeprovider>();
    final loginProvider = context.read<LoginProvider>();
    List Roles = ["Admin", "Teacher", "Student"];
    TextEditingController IdController = TextEditingController();
    TextEditingController FullNameController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 200,
              child: Center(
                child: Image.asset("images/logo.png"),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: themeprovider.isdarkmode ? primaryColor : Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(55),
                  topLeft: Radius.circular(55),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 33, vertical: 50),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: themeprovider.isdarkmode
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ),
                    Switch(
                      value: themeprovider.isdarkmode,
                      onChanged: (Value) {
                        themeprovider.toggle();
                      },
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Container(
                      height: 52,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: TextFormField(
                        controller: IdController,
                        onChanged: (value) => loginProvider.setId(value),
                        decoration: InputDecoration(
                          hintText: "Enter Your ID",
                          hintStyle: GoogleFonts.poppins(color: Colors.white),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 52,
                      width: 343,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: TextFormField(
                        obscureText: true,
                        // controller: FullNameController,
                        onChanged: (value) => loginProvider.setPassword(value),
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 14),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButton(
                      hint: Text("Select Role"),
                      value: loginProvider.role,
                      items: Roles.map(
                        (Role) => DropdownMenuItem(
                          value: Role,
                          child: Text("${Role}"),
                        ),
                      ).toList(),
                      onChanged: (value) {
                        setState(() {
                          loginProvider.setRole(value);
                        });
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgget Password",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    ElevatedButton(
                        onPressed: () => loginProvider.Login(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          maximumSize: Size(254.0, 61),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(fontSize: 18),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
