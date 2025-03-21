<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.

# Currency Pick

## Description
`currency_pick` is a Flutter package that allows users to select currencies easily. It provides a user-friendly dropdown or dialog interface to pick a currency, returning details like currency name, symbol, and code.

## Features
- List of global currencies
- Currency name, symbol, and code
- Customizable UI
- Lightweight and easy to integrate

## Installation
Add the following dependency to your `pubspec.yaml`:

```yaml
dependencies:
  currency_pick: latest_version
```

Then run:
```sh
flutter pub get
```

## Usage
Import the package:
```dart
import 'package:currency_pick/currency_pick.dart';
```

### Example Usage
```dart
// CustomCurrency(
// initialValue: "INR",
// onSaved: (value) {
// print("value");
// print(value);
// },
// )
```

## Customization
You can customize the appearance using optional parameters:
```dart
// CurrencyPicker.showCurrencyPicker(
//   context: context,
//   theme: CurrencyPickerTheme(
//     backgroundColor: Colors.white,
//     titleStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//   ),
//   onSelect: (Currency currency) {
//     print('Selected: ${currency.code}');
//   },
// );
```

## Contributions
Feel free to contribute by submitting issues or pull requests on GitHub.

## License
This package is released under the MIT License.


