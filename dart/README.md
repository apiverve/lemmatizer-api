# Text Lemmatizer API - Dart/Flutter Client

Text Lemmatizer reduces inflected words in submitted text down to their dictionary base forms. It confirms when valid lemmas exist, while paid plans return full word-by-word mappings.

[![pub package](https://img.shields.io/pub/v/apiverve_lemmatizer.svg)](https://pub.dev/packages/apiverve_lemmatizer)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Text Lemmatizer API](https://apiverve.com/marketplace/lemmatizer?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_lemmatizer: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_lemmatizer/apiverve_lemmatizer.dart';

void main() async {
  final client = LemmatizerClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'The cats ran from door to door'
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
    "found": 3,
    "lemmas": {
      "cat": 1,
      "ran": 1,
      "door": 2
    }
  }
}
```

## API Reference

- **API Home:** [Text Lemmatizer API](https://apiverve.com/marketplace/lemmatizer?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/lemmatizer](https://docs.apiverve.com/ref/lemmatizer?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
