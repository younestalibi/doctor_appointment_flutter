import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/appointment_card.dart';
import 'package:flutter_application_1/utils/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> medCat = [
    {
      "icon": FontAwesomeIcons.userDoctor,
      "category": "General",
    },
    {
      "icon": FontAwesomeIcons.heartPulse,
      "category": "Cardiology",
    },
    {
      "icon": FontAwesomeIcons.lungs,
      "category": "Respirations",
    },
    {
      "icon": FontAwesomeIcons.hand,
      "category": "Dermatology",
    },
    {
      "icon": FontAwesomeIcons.personPregnant,
      "category": "Gynecology",
    },
    {
      "icon": FontAwesomeIcons.teeth,
      "category": "Dental",
    },
  ];
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Amanda',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/facebook.png'),
                  ),
                )
              ],
            ),
            Config.spaceSmall,
            Text(
              'Category',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Config.spaceSmall,
            SizedBox(
              height: Config.heightSize * 0.05,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List<Widget>.generate(medCat.length, (index) {
                  return Card(
                    margin: const EdgeInsets.only(right: 20),
                    color: Config.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          FaIcon(
                            medCat[index]['icon'],
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            medCat[index]['category'],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Config.spaceSmall,
            Text(
              'Appointment Today',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Config.spaceSmall,
            AppointmentCard()
          ],
        ),
      ),
    ));
  }
}
