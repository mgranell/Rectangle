/// CenterThirdCalculation.swift

import Foundation

class CenterThirdCalculation: WindowCalculation, OrientationAware {
    
    override func calculateRect(_ params: RectCalculationParameters) -> RectResult {
        let visibleFrameOfScreen = params.visibleFrameOfScreen
        return orientationBasedRect(visibleFrameOfScreen)
    }
    
    func landscapeRect(_ visibleFrameOfScreen: CGRect) -> RectResult {
        var rect = visibleFrameOfScreen
        rect.origin.x = visibleFrameOfScreen.minX + floor(visibleFrameOfScreen.width * CenterThirdWidthRatioCalculation.sideFraction())
        rect.origin.y = visibleFrameOfScreen.minY
        rect.size.width = CenterThirdWidthRatioCalculation.centerDimension(visibleFrameOfScreen.width)
        rect.size.height = visibleFrameOfScreen.height
        return RectResult(rect, subAction: .centerVerticalThird)
    }

    func portraitRect(_ visibleFrameOfScreen: CGRect) -> RectResult {
        var rect = visibleFrameOfScreen
        rect.origin.x = visibleFrameOfScreen.minX
        rect.origin.y = visibleFrameOfScreen.minY + floor(visibleFrameOfScreen.height * CenterThirdWidthRatioCalculation.sideFraction())
        rect.size.width = visibleFrameOfScreen.width
        rect.size.height = CenterThirdWidthRatioCalculation.centerDimension(visibleFrameOfScreen.height)
        return RectResult(rect, subAction: .centerHorizontalThird)
     }
}
