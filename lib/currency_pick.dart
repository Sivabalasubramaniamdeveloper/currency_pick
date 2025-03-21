

import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'currency/currency_controller.dart';


class CustomCurrency extends StatefulWidget {
  final String initialValue;
  // final Function(String)? onSearchChanged;
  final TextStyle? countryTextStyle;
  final BoxDecoration? boxDecoration;
  final AppBar? appBar;
  final TextStyle? symbolTextStyle;
  final Function(Map<String, dynamic>)? onSaved;

  const CustomCurrency({
    super.key,
    required this.initialValue,
    // this.onSearchChanged,
    this.onSaved,
    this.countryTextStyle,
    this.symbolTextStyle,
    this.boxDecoration, this.appBar,
  });

  @override
  State<CustomCurrency> createState() => _CustomCurrencyState();
}

class _CustomCurrencyState extends State<CustomCurrency> {
  String flag = '';
  String name = '';
  String symbol = '';

  @override
  void initState() {
    super.initState();
    _initializeCurrency();
  }

  void _initializeCurrency() {
    final selectedCurrency = currencies.firstWhere(
          (currency) =>
      currency['code'].toString().toLowerCase() ==
          widget.initialValue.toLowerCase(),
      orElse: () => {'flag': '', 'name': '', 'symbol': ''},
    );

    setState(() {
      flag =
          "${selectedCurrency['flag'][0]}${selectedCurrency['flag'][1]}" ?? '';
      name = selectedCurrency['name'] ?? '';
      symbol = selectedCurrency['symbol'] ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CurrencySelectionScreen(onSaved: onSaved)));
      },
      child: Container(
        decoration: widget.boxDecoration,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl:
              "https://flagcdn.com/w40/${flag.toString().toLowerCase()}.png",
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(width: 10),
            Text(name, style: widget.countryTextStyle),
            Spacer(),
            Text(symbol, style: widget.symbolTextStyle),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }

  void onSaved(Map<String, dynamic> currency) {
    widget.onSaved!(currency);
    setState(() {
      flag = "${currency['flag'][0]}${currency['flag'][1]}" ?? '';
      name = currency['name'] ?? '';
      symbol = currency['symbol'] ?? '';
    });
  }
}
