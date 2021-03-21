import 'package:contador/app/components/currency_box.dart';
import 'package:contador/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 100, right: 20, bottom: 20, left: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
            ),
            SizedBox(
              height: 50,
            ),
            CurrencyBox(
              selectedItem: homeController.toCurrency,
              controller: homeController.toText,
              items: homeController.currencies,
              onChanged: (model) {
                setState(() {
                  homeController.toCurrency = model;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            CurrencyBox(
              selectedItem: homeController.fromCurrency,
              controller: homeController.fromText,
              items: homeController.currencies,
              onChanged: (model) {
                setState(() {
                  homeController.fromCurrency = model;
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue[300],
                  ),
                ),
                onPressed: () {
                  homeController.convert();
                },
                child: Text('CONVERT'),
              ),
            ),
            Text(
              'Convert',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    ));
  }
}
