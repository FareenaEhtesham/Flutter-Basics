import 'package:flutter/material.dart';
import 'package:demo_app/widgets/profile_widget.dart';
import 'package:demo_app/widgets/button_widget.dart';
import 'package:demo_app/widgets/number_widget.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo App"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 24),
          ProfileWidget(),
          const SizedBox(height: 24),
          buidName(),
          const SizedBox(height: 12),
          Center(child: buildButton()),
          const SizedBox(height: 30),
          NumberWidget(),
          const SizedBox(height: 40),
          AboutText(),
        ],
      ),
    );
  }

  Widget buidName() => Column(
        children: [
          Text(
            "Fareena Ehtesham",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "fareena.ehtesham.230@gmail.com",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      );

  Widget buildButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget AboutText() => Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Text(
            "About Myself",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ));
}
