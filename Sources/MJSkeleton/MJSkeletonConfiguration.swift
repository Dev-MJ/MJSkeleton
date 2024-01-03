import SwiftUI

public struct MJSkeletonConfiguration {
    public typealias Points = (start: UnitPoint, end: UnitPoint)
    public let gradient: Gradient
    public let initialPoints: Points
    public let finalPoints: Points
    public let duration: TimeInterval
    public let opacity: Double
    public static let `default` = Self.init(gradient: Gradient(stops: [.init(color: .black, location: 0),
                                                                       .init(color: .white, location: 0.3),
                                                                       .init(color: .white, location: 0.7),
                                                                       .init(color: .black, location: 1),]),
                                            initialPoints: Points(start: UnitPoint(x: -1, y: 0.5),
                                                                  end: .leading),
                                            finalPoints: Points(start: .trailing,
                                                                end: UnitPoint(x: 2, y: 0.5)),
                                            duration: 2,
                                            opacity: 0.6
    )
}
