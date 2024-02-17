import SwiftUI

@available(macOS 11.0, iOS 13.0, *)
public struct TabHStack<TabType, TabLabelView>: View where TabType: TabItemRepresentable, TabLabelView: View {
    @Namespace
    private var namespace
    
    public let tabValues: [TabType]
    
    @ViewBuilder
    public var selectedTabLabelViewBuilder: (TabType, Bool) -> TabLabelView
    
    @State
    public var selectedTab: TabType?
    
    public init(tabValues: [TabType], selectedTab: TabType? = nil, selectedTabLabelViewBuilder: @escaping (TabType, Bool) -> TabLabelView) {
        self.tabValues = tabValues
        self.selectedTabLabelViewBuilder = selectedTabLabelViewBuilder
        self.selectedTab = selectedTab
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            ForEach(tabValues, id: \.hashValue) {
                TabItem(namespace: namespace, currentTab: $0, selectedTab: $selectedTab) {
                    selectedTabLabelViewBuilder($0, $1)
                }
            }
        }
    }
}
