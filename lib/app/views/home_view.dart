import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
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
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 56.7,
                        child: DropdownButton(
                            iconEnabledColor: Colors.blue[300],
                            items: [
                              DropdownMenuItem(child: Text('Real')),
                              DropdownMenuItem(child: Text('Dolar')),
                              DropdownMenuItem(child: Text('Euro'))
                            ],
                            underline: Container(
                              height: 1,
                              color: Colors.blue[300],
                            ),
                            isExpanded: true,
                            onChanged: (value) {}),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue[300]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                onPressed: () => {print('opa')},
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
