import 'package:flutter/material.dart';
import 'package:project_final/screens/car_list_item.dart';
import '../models/car.dart';
import '../repositories/car_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Car>? _car;
  var _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    getCars();
  }

  getCars() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    await Future.delayed(Duration(seconds: 2));

    try {
      var cars = await CarRepository().getCars();
      debugPrint('Number of cars: ${cars.length}');

      setState(() {
        _car = cars;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));

    buildError() => Center(
        child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getCars, child: Text('Retry'))
            ])));

    buildList() => ListView.builder(
        itemCount: _car!.length,
        itemBuilder: (ctx, i) {
          Car car = _car![i];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: CarListItem(car: car),
          );
        });

    return Scaffold(
        appBar: AppBar(
          title: Text('Car Store'),
        ),
        body: Stack(
          children: [
            if (_car?.isNotEmpty ?? false) buildList(),
            if (_errorMessage != null) buildError(),
            if (_isLoading) buildLoadingOverlay()
          ],
        ));
  }
}
