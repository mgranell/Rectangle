/// CenterThirdWidthRatioCalculation.swift

import Foundation

enum CenterThirdWidthRatioCalculation {

    static func widthRatio() -> CGFloat {
        max(0.01, CGFloat(Defaults.centerThirdWidthRatio.value) / 100.0)
    }

    static func sideFraction() -> CGFloat {
        1.0 / (widthRatio() + 2)
    }

    static func sideDimension(_ length: CGFloat) -> CGFloat {
        floor(length * sideFraction())
    }

    static func centerDimension(_ length: CGFloat) -> CGFloat {
        length - 2 * sideDimension(length)
    }
}
