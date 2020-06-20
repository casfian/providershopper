import 'package:flutter/material.dart';

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MalaKaf Mall',
                style: Theme.of(context).textTheme.headline1,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 24,
              ),
              OutlineButton(
                color: Colors.blueGrey,
                child: Text('LOGIN', style: TextStyle(color: Colors.blueGrey),),
                onPressed: () {
                  //You can do your own auhentication here
                  Navigator.pushReplacementNamed(context, '/catalog');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
