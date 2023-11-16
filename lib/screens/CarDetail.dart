import 'package:flutter/material.dart';
import 'package:project_final/models/car.dart';

class CarDetail extends StatelessWidget {
  final Car car;

  const CarDetail({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name),),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Center(child: Image.asset(car.carimage,height: 300.0,
                          width: 500.0)),
                    ),

                    SizedBox(height: 16,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Center(child: Image.asset(car.carimage2,height: 300.0,
                          width: 500.0)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Center(child: Image.asset(car.carimage3,height: 300.0,
                          width: 500.0)),
                    ),
                    SizedBox(height: 16,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Center(child: Image.asset(car.carimage4,height: 300.0,
                          width: 500.0)),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(car.name, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  SizedBox(width: 20,),
                  Text('ราคา ${car.price.toString()} บาท',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('เกียร์ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text(car.transmission,style: TextStyle(fontSize: 18,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('สี : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text(car.color,style: TextStyle(fontSize: 18,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('เลขไมล์ : ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text(car.miles.toString(),style: TextStyle(fontSize: 18,)),
                  Text('Km.',style: TextStyle(fontSize: 18,)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.account_circle,size: 40,color: Colors.black,),
                  SizedBox(width: 5,),
                  Text(car.phone.toString(),style: TextStyle(fontSize: 18,)),
                ],
              ),
          ],),
        ],
      ),
    );
  }
}