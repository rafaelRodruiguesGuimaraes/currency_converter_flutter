import 'package:contador/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;

  final CurrencyModel selectedItem;

  final void Function(CurrencyModel currencyModel) onChanged;

  const CurrencyBox(
      {Key key, this.items, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56.7,
            child: DropdownButton<CurrencyModel>(
              value: selectedItem,
              iconEnabledColor: Colors.blue[300],
              items: items
                  .map(
                    (item) => DropdownMenuItem(
                      child: Text(item.name),
                      value: item,
                    ),
                  )
                  .toList(),
              underline: Container(
                height: 1,
                color: Colors.blue[300],
              ),
              isExpanded: true,
              onChanged: onChanged,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue[300]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
