# 🌈 Rainbow Circular Avatar

A beautiful and lightweight Flutter package for displaying circular avatars with **gradient rainbow borders**, inspired by Google's design.

This package provides a customizable avatar widget with sweep gradient support and fallback icon behavior.

---

## ✨ Features

- ✅ Circular avatar with sweep gradient border
- ✅ Fully customizable border colors, stops, width, and radius
- ✅ Fallback icon if image URL is empty or null
- ✅ Easy to use and minimal setup

---

## 📦 Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  rainbow_circular_avatar: ^0.0.1
```

Then run:
```
flutter pub get
```
🧪 Usage
```
import 'package:flutter/material.dart';
import 'package:rainbow_circular_avatar/rainbow_circular_avatar.dart';

class ExampleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GoogleRainbowCircularAvatar(
      imageUrl: 'https://yourdomain.com/your_avatar.png',
      radius: 40,
      borderWidth: 4.0,
      colors: const [
        Color(0xffD7493F),
        Color(0xff4D84E9),
        Color(0xff369E4F),
        Color(0xffF2BB20),
      ],
      stops: const [0.0, 0.3, 0.7, 0.9],
      fallbackIcon: Icon(Icons.person, size: 40),
    );
  }
}
```
## 🎯 Constructor Parameters

| Parameter         | Type           | Description                                                                |
|------------------|----------------|----------------------------------------------------------------------------|
| `imageUrl`        | `String`       | URL of the profile image.                                                  |
| `radius`          | `double`       | Radius of the inner avatar. Default is `30.0`.                             |
| `borderWidth`     | `double`       | Width of the circular border. Default is `3.0`.                            |
| `colors`          | `List<Color>`  | Colors for the sweep gradient. Must match `stops` length.                  |
| `stops`           | `List<double>` | Stops for the gradient, between `0.0` and `1.0`.                           |
| `backgroundColor` | `Color?`       | Background color for the inner circle. Optional.                           |
| `fallbackIcon`    | `Widget?`      | Widget shown when `imageUrl` is empty. Optional.                           |

## 📷 Screenshot

<img src="https://i.ibb.co/VWFfTjJL/Screenshot-287.png" width="600" />


## 📄 License
This project is licensed under the MIT License.

## 👤 Author
Ayusman Samasi
GitHub • LinkedIn

## 🔮 Contributions
PRs and suggestions are welcome! Feel free to open issues or submit improvements.
