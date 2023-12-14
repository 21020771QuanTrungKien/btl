import 'package:flutter/material.dart';
import 'package:healthcare_app/utils/config.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key, required this.route}) : super(key: key);

  final String route;

  // final Map<String, dynamic> doctor;
  // final bool isFav;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 150,
      child: GestureDetector(
        child: Card(
          elevation: 5,
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                width: Config.widthSize * 0.33,
                child: Image.asset(
                  'assets/doctor_2.jpg',
                  // child: Image.network(
                  //   "http://127.0.0.1:8000${doctor['doctor_profile']}",
                  fit: BoxFit.fill,
                ),
              ),
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        // "Dr ${doctor['doctor_name']}",
                        'Dr Richard Tan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // "${doctor['category']}",
                        'Dental',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 16,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text('4.5'),
                          Spacer(
                            flex: 1,
                          ),
                          Text('Reviews'),
                          Spacer(
                            flex: 1,
                          ),
                          Text('(20)'),
                          Spacer(
                            flex: 7,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          //pass the details to detail page
          // MyApp.navigatorKey.currentState!.push(MaterialPageRoute(
          //     builder: (_) => DoctorDetails(
          //           doctor: doctor,
          //           isFav: isFav,
          //         )));
          Navigator.of(context).pushNamed(route);
        },
      ),
    );
  }
}