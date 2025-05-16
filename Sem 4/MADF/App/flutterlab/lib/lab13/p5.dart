import 'package:flutter/material.dart';
import '../pages/basic_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController userCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  TextEditingController conPassCon = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isOb = true;
  bool _isObc = true;
  bool _isLogin = true;
  String _btnText = 'Login';
  @override
  Widget build(BuildContext context) {
    var form = Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_isLogin ? 'Login' : 'Register',
                  style: TextStyle(color: Colors.white, fontSize: 24)),

              //Username
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: userCon,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username is required';
                      } else if (!RegExp(r'^[a-zA-Z0-9]{6,}$')
                          .hasMatch(value)) {
                        return 'Username must be alphanumeric';
                      }
                      return null;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),

              //Password
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    obscureText: _isOb,
                    controller: passCon,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      } else if (!RegExp(r'^[a-zA-Z0-9]{6,}$')
                          .hasMatch(value)) {
                        return 'Invalid password';
                      }
                      return null;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isOb = !_isOb;
                            });
                          },
                          icon: Icon(
                            _isOb ? Icons.visibility : Icons.visibility_off,
                            color: Colors.white,
                          )),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  )),

              //Confirm Password
              Visibility(
                visible: _isLogin,
                child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      obscureText: _isObc,
                      controller: conPassCon,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Confirm Password is required';
                        } else if (value != passCon.text) {
                          return 'Password does not match';
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(color: Colors.white),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObc = !_isObc;
                              });
                            },
                            icon: Icon(
                              _isObc ? Icons.visibility : Icons.visibility_off,
                              color: Colors.white,
                            )),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BasicPage(displayText: userCon.text);
                          }));
                        }
                      });
                    },
                    child:
                        Text(_btnText, style: TextStyle(color: Colors.black))),
              ),
              Container(
                margin: EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_isLogin ? 'Don\'t have an account? ' : 'Have an account?',
                        style: TextStyle(color: Colors.white)),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                            _btnText = _isLogin ? 'Login' : 'Register';
                          });
                        },
                        child: Text(_isLogin ? 'Register' : 'Login',
                            style:
                                TextStyle(color: Colors.lightBlueAccent[50])))
                  ],
                ),
              )
            ],
          ),
        )),
      );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: TextButton(onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return form;
          },
          showDragHandle: true,
          );
        }, child: Text('Press me')),
      ),
    );
  }
}
