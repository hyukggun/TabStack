import SwiftUI

@available(macOS 11.0, iOS 13.0, *)
public struct TabHStack<TabType, TabLabelView>: View where TabType: TabItemRepresentable, TabLabelView: View {
    @Namespace
    private var namespace
    
    public let tabValues: [TabType]
    
    @State
    public var selectedTab: TabType?
    
    var selectedTabLabelViewBuilder: (TabType, Bool) -> TabLabelView
    
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
