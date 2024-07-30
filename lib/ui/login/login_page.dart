import 'package:flutter/material.dart';
import 'package:product_inventry/ui/inventries.dart';
import 'package:product_inventry/utility/utils.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(250),
                bottomRight: Radius.circular(250))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.green),
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.lock,
                size: 45,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 20),
              child: Text(
                'Welcome,',
                style: displayXL(context),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 8),
              child: Text(
                'Sign In to continue',
                style: displayXLGrey(context),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40, top: 20),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Inventory()),
                      );
                    },
                  style: ElevatedButton.styleFrom(
                    elevation: 2.0,
                    backgroundColor: Colors.white,
                  ),
                    //splashColor: Colors.green,
                    child: Container(child: Text('Get Started ->'))),
              ),
            ),
          ],
        ),
      ),
    );
    //);
  }
}
