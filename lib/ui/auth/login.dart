import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool signInForm = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    signInForm = true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kToolbarHeight),
              Container(
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                height: 80.0,
                width: 80.0,
              ),
              const SizedBox(height: 30.0,),
              RaisedButton(onPressed: (){}, 
              child: const Text('Continue with Google'),
              textColor: Colors.white,
              color: Colors.red,
              ),
              const SizedBox(height: 30.0,),
              AnimatedSwitcher(
                child: signInForm?LoginForm():SignUpForm(),
                duration: Duration(milliseconds: 200), ),
              const SizedBox(height: 10.0,),
            OutlineButton(
              borderSide: const BorderSide(color: Colors.white),
              highlightColor: Colors.blue[300],
              onPressed: (){
                setState(() {
                  signInForm = !signInForm;
                });
              }, child:  signInForm ? (Text('Sign Up', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17.0, ), )) : Icon(Icons.arrow_back, color: Colors.black,),
            )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 16.0),
            child: const Text('Login Page', style: TextStyle(fontSize: 20.0),)),
            TextFormField(
              textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        label: Text('Enter E-mail '),
      ),
    ),
    const SizedBox(height: 16.0,),
    TextFormField(
      decoration: const InputDecoration(
        label: Text('Enter password '),
        
        
      ),
      textInputAction: TextInputAction.done,
      obscureText: true,
    ),
    const SizedBox(height: 20.0,),
    Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: RaisedButton(onPressed: (){
        
      }, child: Text('Login'))),
        ],
      ),
    );
  }
}

//signUpForm

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 16.0),
            child: const Text('Sign-Up Page', style: TextStyle(fontSize: 20.0),)),
            TextFormField(
              textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
        label: Text('Enter E-mail '),
      ),
    ),
    const SizedBox(height: 16.0,),
    TextFormField(
      decoration: const InputDecoration(
        label: Text('Enter password '),
        
        
      ),
      textInputAction: TextInputAction.done,
      obscureText: true,
    ),
     const SizedBox(height: 16.0,),
    TextFormField(
      decoration: const InputDecoration(
        label: Text('Confirm password '),
        
        
      ),
      textInputAction: TextInputAction.done,
      obscureText: true,
    ),
    const SizedBox(height: 20.0,),
    Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: RaisedButton(onPressed: (){}, child: Text('Create Account'))),
        ],
      ),
    );
  }
}