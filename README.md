# Glitch Text
A Flutter package for creating Text widget with glitch effects 

## Features
* Customizable glitch width (offset)
* 8+ verity fonts
* Custimizable Font Properties

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:

  glitch_text: ^0.0.1
```

Import it:

```dart
import 'package:glitch_text';;
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
