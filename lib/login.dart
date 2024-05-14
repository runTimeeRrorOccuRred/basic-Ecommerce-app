import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool change=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: 250,
                  child: Image.asset("assets/loginpics.png")),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "User Name",
                    hintText: "Enter User Name"),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password",
                    hintText: "Enter Password"),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () async{
                  setState(()
                  {
                    change=true;
                  });
                  await Future.delayed(Duration(milliseconds: 400));
                  Navigator.pushNamed(context, "/welcome");
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: change==false ? 100:50,
                  height: 50,
                  child: Center(
                      child: change==false?  Text("Login",
                        style: TextStyle(fontSize: 20,
                            color: Colors.white),
                      ):Icon(Icons.done,
                        color: Colors.white,)
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(25)),
                ),
              )
            ],
          ),
        ));
  }
}
