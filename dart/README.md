# Coordinates Are Sea API - Dart/Flutter Client

Coordinates are Sea is a simple tool for checking if coordinates are in the sea. It returns if the coordinates are in the sea or not.

[![pub package](https://img.shields.io/pub/v/apiverve_coordinatesaresea.svg)](https://pub.dev/packages/apiverve_coordinatesaresea)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Coordinates Are Sea API](https://apiverve.com/marketplace/coordinatesaresea?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_coordinatesaresea: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_coordinatesaresea/apiverve_coordinatesaresea.dart';

void main() async {
  final client = CoordinatesareseaClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'lat': 37.7749,
      'lon': -122.4194
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "latitude": 37.7749,
    "longitude": -122.4194,
    "isSea": false
  }
}
```

## API Reference

- **API Home:** [Coordinates Are Sea API](https://apiverve.com/marketplace/coordinatesaresea?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/coordinatesaresea](https://docs.apiverve.com/ref/coordinatesaresea?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
