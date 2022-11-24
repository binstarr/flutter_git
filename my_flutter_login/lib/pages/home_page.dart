import 'package:flutter/material.dart';
import 'package:my_flutter_login/components/logo.dart';
import 'package:my_flutter_login/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap,),
            SizedBox(height: xlarge_gap,),
            Logo(title: 'Care Soft'),
            SizedBox(height: large_gap,),
            SizedBox(
              height: 70,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black87),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.black87)
                    )
                  )
                ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Get Started!!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
