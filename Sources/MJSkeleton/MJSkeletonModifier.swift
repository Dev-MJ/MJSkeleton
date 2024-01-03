import SwiftUI

public struct MJSkeletonModifier: ViewModifier {
    let configuration: MJSkeletonConfiguration
    public func body(content: Content) -> some View {
        MJSkeletonView(configuration: configuration) { content }
    }
}

public extension View {
    func skeleton(configuration: MJSkeletonConfiguration = .default) -> some View {
        self.modifier(MJSkeletonModifier(configuration: configuration))
    }
}
