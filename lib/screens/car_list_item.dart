import 'package:flutter/material.dart';
import 'package:project_final/models/car.dart';
import 'package:project_final/screens/CarDetail.dart';


class CarListItem extends StatelessWidget {
  static const iconSize = 18.0;

  final Car car;

  const CarListItem({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;
    var colorScheme = Theme
        .of(context)
        .colorScheme;

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: ListTile(
        shape: RoundedRectangleBorder( //<-- SEE HERE
          side: BorderSide(width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
          visualDensity: VisualDensity(vertical: 4),
        title: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Center(child: Image.asset(car.carimage,height: 300.0,
                    width: 500.0)),
                ),
                SizedBox(width: 80.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(car.name, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('เกียร์ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          Text(car.transmission,style: TextStyle(fontSize: 18,)),
                        ],
                      ),
                      Row(
                        children: [
                          Text('สี : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          Text(car.color,style: TextStyle(fontSize: 18,)),
                        ],
                      ),
                      Row(
                        children: [
                          Text('เลขไมล์ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          Text(car.miles.toString(),style: TextStyle(fontSize: 18,)),
                          Text('Km.',style: TextStyle(fontSize: 18,)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.account_circle,size: 40,color: Colors.black,),
                          SizedBox(width: 5,),
                          Text(car.phone.toString(),style: TextStyle(fontSize: 18,)),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text('${car.price.toString()} บาท',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink))
                ])
              ]
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CarDetail(car: car,)));
        },
      ),
    );
  }



        /*child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Center(child: Image.asset(car.carimage,height: 300.0,
                  width: 500.0,)),
              ),
              SizedBox(width: 80.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(car.name, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text('เกียร์ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        Text(car.transmission,style: TextStyle(fontSize: 18,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('สี : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        Text(car.color,style: TextStyle(fontSize: 18,)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('เลขไมล์ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        Text(car.miles.toString(),style: TextStyle(fontSize: 18,)),
                        Text('Km.',style: TextStyle(fontSize: 18,)),
                      ],
                    ),
                  ],
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text('${car.distance.toString()} เมตร',
                    style: textTheme.bodyLarge)
              ])
            ])));*/

  }

