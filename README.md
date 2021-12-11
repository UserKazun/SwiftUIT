# SwiftUIT (Tips)
[![Swift Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fuhooi%2Fswift-string-transform%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/uhooi/swift-string-transform)
[![Platform Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fuhooi%2Fswift-string-transform%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/uhooi/swift-string-transform)
[![License](https://img.shields.io/github/license/UserKazun/SwiftUIT)](https://github.com/UserKazun/SwiftUIT/blob/main/LICENSE)
[![Twitter](https://img.shields.io/twitter/follow/developer_kazu?style=social)](https://twitter.com/developer_kazu)

# What is SwiftUIT
Tips and tricks for SwiftUI, including CustomTextField, etc. More updates to come.

# Installation
#### Xcode

You can add this package on Xcode.
See [documentation](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app).

## TTextField
You can use a TextField for the image. You can treat it just like a normal TextField, since it only has a design applied to it.

![Simulator Screen Shot - iPhone 13 - 2021-12-11 at 22 54 1](https://user-images.githubusercontent.com/34956483/145679398-a89ce2ce-7dee-46c1-84e0-9d205c41fe09.png)

### Example
```swift
struct ContentView: View {
    @State var text: String = ""
    
    var body: some View {
        TTextFieldView(text: $text, placeholder: "Placeholder", icon: "person")
    }
}
```
