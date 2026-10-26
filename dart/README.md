# Coordinates Are Sea API - Dart/Flutter Client

Coordinates Are Sea checks whether a given latitude and longitude pair sits in the ocean or on land. Pass geographic coordinates to receive a boolean confirming if the location is in the sea.

[![pub package](https://img.shields.io/pub/v/apiverve_coordinatesaresea.svg)](https://pub.dev/packages/apiverve_coordinatesaresea)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Coordinates Are Sea API](https://apiverve.com/marketplace/coordinatesaresea?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_coordinatesaresea: ^1.2.3
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

- **API Home:** [Coordinates Are Sea API](https://apiverve.com/marketplace/coordinatesaresea?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/coordinatesaresea](https://docs.apiverve.com/ref/coordinatesaresea?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
