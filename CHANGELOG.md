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
