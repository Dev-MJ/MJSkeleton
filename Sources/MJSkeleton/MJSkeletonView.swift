import SwiftUI

struct MJSkeletonView<Content: View>: View {
    private let content: () -> Content
    private let config: MJSkeletonConfiguration
    @State private var points: (start: UnitPoint, end: UnitPoint)
    init(configuration: MJSkeletonConfiguration, @ViewBuilder content: @escaping () -> Content) {
        self.config = configuration
        self.content = content
        self.points = (start: configuration.initialPoints.start,
                       end: configuration.initialPoints.end)
    }
    var body: some View {
        if #available(iOS 15.0, *) {
            self.content()
                .overlay {
                    LinearGradient(gradient: self.config.gradient,
                                   startPoint: self.points.start,
                                   endPoint: self.points.end)
                    .opacity(self.config.opacity)
                    .blendMode(.screen)
                    .onAppear {
                        withAnimation(Animation.linear(duration: self.config.duration)
                            .repeatForever(autoreverses: false)) {
                                self.points = (start: self.config.finalPoints.start,
                                               end: self.config.finalPoints.end)
                            }
                    }
                }
        } else {
            ZStack {
                self.content()
                LinearGradient(gradient: self.config.gradient,
                               startPoint: self.points.start,
                               endPoint: self.points.end)
                .opacity(self.config.opacity)
                .blendMode(.screen)
                .onAppear {
                    withAnimation(Animation.linear(duration: self.config.duration)
                        .repeatForever(autoreverses: false)) {
                            self.points = (start: self.config.finalPoints.start,
                                           end: self.config.finalPoints.end)
                        }
                }
            }
        }
    }
}
