import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Task1(),
      ),
    );

class Task1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.account_circle_outlined,
          size: 25,
        ),
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 29),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/myAvatar.jpg'),
              ),
            ),
            CustomRichText(property: 'Name: ', value: 'Muhammad'),
            CustomRichText(property: 'age: ', value: '21'),
            CustomRichText(property: 'Education: ', value: 'Some college'),
            CustomRichText(property: 'Address: ', value: 'Menoufia, Egypt'),
          ],
        ),
      ),
    );
  }
}

class CustomRichText extends StatelessWidget {
  final String property;
  final String value;
  const CustomRichText({@required this.property, @required this.value});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: property,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: value,
              style: TextStyle(
                color: Colors.blue,
                fontFamily: 'Parisienne',
                fontSize: 25,
              )),
        ],
      ),
    );
  }
}
