## 0.0.1-alpha.1

* Initial pre-release

## 0.0.1-alpha.2

### Additions:

#### Widgets:
  * `EmptyView`: a view with no content that takes up no space. A quick way to end a widget tree, or used as a placeholder druing development.
  * `EmptyIcon`: an invisible icon, that does take up space. Useful for spacing out groups of icon buttons.

#### Extensions:
  * `BrightnessPrime`:
    * `platformBrightness`: Static method that returns the device's current `Brightness` setting.
    * `isPlatformBrightness`: Instance method that returns a `bool` indicating whether the instance matches the device's current `Brightness` setting or not. Useful for quickly determining if you should toggle the current theme.
  * `ThemeDataPrime`:
    * `cupertinoThemeData`: Build a `CupertinoThemeData` object based on a `ThemeData`.

## 0.0.1-alpha.3

### Additions:

#### Extensions:
  * `ColorPrime`:
    * `filter`: Instance method that returns a [ColorFilter] with the specified [BlendMode].
    * `darken`: Instance method that returns [Color] that is darker by either a specified amount or percentage.
    * `lighten`: Instance method that returns [Color] that is lighter by either a specified amount or percentage.

## 0.0.1-alpha.4

### Notes:
  * Renamed the `build.sh` script to `prebuild.sh` to be more accurate.

### Additions:

#### Extensions:

## 0.0.1-alpha.5

### Additions:

#### Extensions:
  * `ColorPrime`:
    * `random`: Instance method that returns a randomized [Color].


## 0.1.0-alpha.6 - 2025/05/15

### Notes:
  * Updated required SDK version: `>=3.6.0 <4.0.0`
  * Updated required Flutter version: `>=3.27.0`
  * Updated dependencies
  * Updated various deprecated API's to their current replacements
  * Updated build scripts (Gradle etc)

### Additions:

#### Extensions:


## 0.2.0 - 2025/05/30

### Notes:
  * Bumped dependencies
  * Dropped `-alpha` pre-release tag in the version number

### Additions:

#### Extensions:
