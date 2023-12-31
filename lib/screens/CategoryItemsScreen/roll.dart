import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_firstapp/components/widgets/roll/rollCategorydetail.dart';

class RollScreen extends StatefulWidget {
  const RollScreen({super.key});

  @override
  State<RollScreen> createState() => _RollScreenState();
}

class _RollScreenState extends State<RollScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF2A4BA0),
            title: const Text(
              "Roll's  Menu",
            ),
            actions: const [
              Icon(Icons.search),
              SizedBox(
                width: 30,
              ),
              Center(
                child: FaIcon(
                  FontAwesomeIcons.cartShopping,
                ),
              ),
              SizedBox(
                width: 20,
              )
            ]),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF9B023),
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "Delicious Roll Menu",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              RollCategoryScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
