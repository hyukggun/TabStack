# TabStack

TabStack is a SwiftUI-based library for iOS app development that makes it easy to implement tab-based navigation.
It makes it easy to configure multi-tabbed interfaces with just a few lines of code, without the need for complex tab management logic.

## Installation
1. Xcode, select from the menu File > Swift Packages > Add Package Dependency
2. Specify the URL https://github.com/hyukggun/TabStack

## Usage
```swift
//
//  TabHStackExamplePage.swift

import SwiftUI
import TabStack


struct TabHStackExamplePage: View {
    
    let sections = MovieSections.allCases
    
    @State
    var selectedTab: MovieSections? = .nowPlaying
    
    var body: some View {
        TabHStack(tabValues: sections, selectedTab: $selectedTab) { currentTab, isSelected in
            HStack {
                Text(currentTab.title)
                if isSelected {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

```

## License
MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Author
hyukggunechoe@gmail.com
