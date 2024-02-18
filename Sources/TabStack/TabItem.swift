//
//  TabItem.swift
//
//
//  Created by 최최광현 on 1/24/24.
//

import SwiftUI

@available(macOS 11.0, iOS 13.0, *)
public struct TabItem<TabType, TabLabelView>: View where TabType: Hashable, TabLabelView: View {
    
    let namespace: Namespace.ID
    
    public let currentTab: TabType
    
    @Binding
    public var selectedTab: TabType?
    
    private var isSelected: Bool {
        guard let selectedTab else { return false }
        return selectedTab.hashValue == currentTab.hashValue
    }
    
    @ViewBuilder
    public var tabLabelViewBuilder: (TabType, Bool) -> TabLabelView
    
    public var body: some View {
        Button(action: {
            selectedTab = currentTab
        }, label: {
            VStack {
                tabLabelViewBuilder(currentTab, isSelected)
                ZStack {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(Color.gray)
                    if isSelected {
                        Rectangle()
                            .frame(height: 2)
                            .foregroundColor(Color.yellow)
                    }
                }
            }
        })
        .buttonStyle(.plain)
    }
}

