# Glitch Text
A Flutter package for creating Text widget with glitch effects 

## Features
* Customizable glitch width (offset)
* 8+ verity fonts
* Custimizable Font Properties

## Getting Started

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  glitch_text: ^0.0.1
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```
$ pub get
```

with `Flutter`:

```
$ flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:glitch_text/glitch_text.dart';
```


## Usage

import plugin and create GlichText function

```dart
  TextFun(
    data: "done",
    align: TextAlign.center,
    fontSize: 90,
    overflow: TextOverflow.ellipsis,
    font: GlitchFont.debug(),
    offset: 3,
    fontColor: Colors.black,
    wordSpacing: 1,
    letterSpacing: 1,
   ),
```

## Additional information

If you have any feedback, please reach out to us at dinoykraj@gmail.com
