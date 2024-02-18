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
TabStack is distributed under the MIT license. For more information, see the [LICENSE](https://github.com/hyukggne/TabStack/repo/blob/branch/LICENSE) file.

## Author
hyukggunechoe@gmail.com
