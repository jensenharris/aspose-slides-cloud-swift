/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------------------------------------------
 */


import Foundation


/** Represents comment of slide */
public class Effect: Codable {

    public enum ModelType: String, Codable { 
        case appear = "Appear"
        case curveUpDown = "CurveUpDown"
        case ascend = "Ascend"
        case blast = "Blast"
        case blinds = "Blinds"
        case blink = "Blink"
        case boldFlash = "BoldFlash"
        case boldReveal = "BoldReveal"
        case boomerang = "Boomerang"
        case bounce = "Bounce"
        case box = "Box"
        case brushOnColor = "BrushOnColor"
        case brushOnUnderline = "BrushOnUnderline"
        case centerRevolve = "CenterRevolve"
        case changeFillColor = "ChangeFillColor"
        case changeFont = "ChangeFont"
        case changeFontColor = "ChangeFontColor"
        case changeFontSize = "ChangeFontSize"
        case changeFontStyle = "ChangeFontStyle"
        case changeLineColor = "ChangeLineColor"
        case checkerboard = "Checkerboard"
        case circle = "Circle"
        case colorBlend = "ColorBlend"
        case colorTypewriter = "ColorTypewriter"
        case colorWave = "ColorWave"
        case complementaryColor = "ComplementaryColor"
        case complementaryColor2 = "ComplementaryColor2"
        case compress = "Compress"
        case contrastingColor = "ContrastingColor"
        case crawl = "Crawl"
        case credits = "Credits"
        case custom = "Custom"
        case darken = "Darken"
        case desaturate = "Desaturate"
        case descend = "Descend"
        case diamond = "Diamond"
        case dissolve = "Dissolve"
        case easeInOut = "EaseInOut"
        case expand = "Expand"
        case fade = "Fade"
        case fadedSwivel = "FadedSwivel"
        case fadedZoom = "FadedZoom"
        case flashBulb = "FlashBulb"
        case flashOnce = "FlashOnce"
        case flicker = "Flicker"
        case flip = "Flip"
        case float = "Float"
        case fly = "Fly"
        case fold = "Fold"
        case glide = "Glide"
        case growAndTurn = "GrowAndTurn"
        case growShrink = "GrowShrink"
        case growWithColor = "GrowWithColor"
        case lighten = "Lighten"
        case lightSpeed = "LightSpeed"
        case mediaPause = "MediaPause"
        case mediaPlay = "MediaPlay"
        case mediaStop = "MediaStop"
        case path4PointStar = "Path4PointStar"
        case path5PointStar = "Path5PointStar"
        case path6PointStar = "Path6PointStar"
        case path8PointStar = "Path8PointStar"
        case pathArcDown = "PathArcDown"
        case pathArcLeft = "PathArcLeft"
        case pathArcRight = "PathArcRight"
        case pathArcUp = "PathArcUp"
        case pathBean = "PathBean"
        case pathBounceLeft = "PathBounceLeft"
        case pathBounceRight = "PathBounceRight"
        case pathBuzzsaw = "PathBuzzsaw"
        case pathCircle = "PathCircle"
        case pathCrescentMoon = "PathCrescentMoon"
        case pathCurvedSquare = "PathCurvedSquare"
        case pathCurvedX = "PathCurvedX"
        case pathCurvyLeft = "PathCurvyLeft"
        case pathCurvyRight = "PathCurvyRight"
        case pathCurvyStar = "PathCurvyStar"
        case pathDecayingWave = "PathDecayingWave"
        case pathDiagonalDownRight = "PathDiagonalDownRight"
        case pathDiagonalUpRight = "PathDiagonalUpRight"
        case pathDiamond = "PathDiamond"
        case pathDown = "PathDown"
        case pathEqualTriangle = "PathEqualTriangle"
        case pathFigure8Four = "PathFigure8Four"
        case pathFootball = "PathFootball"
        case pathFunnel = "PathFunnel"
        case pathHeart = "PathHeart"
        case pathHeartbeat = "PathHeartbeat"
        case pathHexagon = "PathHexagon"
        case pathHorizontalFigure8 = "PathHorizontalFigure8"
        case pathInvertedSquare = "PathInvertedSquare"
        case pathInvertedTriangle = "PathInvertedTriangle"
        case pathLeft = "PathLeft"
        case pathLoopdeLoop = "PathLoopdeLoop"
        case pathNeutron = "PathNeutron"
        case pathOctagon = "PathOctagon"
        case pathParallelogram = "PathParallelogram"
        case pathPeanut = "PathPeanut"
        case pathPentagon = "PathPentagon"
        case pathPlus = "PathPlus"
        case pathPointyStar = "PathPointyStar"
        case pathRight = "PathRight"
        case pathRightTriangle = "PathRightTriangle"
        case pathSCurve1 = "PathSCurve1"
        case pathSCurve2 = "PathSCurve2"
        case pathSineWave = "PathSineWave"
        case pathSpiralLeft = "PathSpiralLeft"
        case pathSpiralRight = "PathSpiralRight"
        case pathSpring = "PathSpring"
        case pathSquare = "PathSquare"
        case pathStairsDown = "PathStairsDown"
        case pathSwoosh = "PathSwoosh"
        case pathTeardrop = "PathTeardrop"
        case pathTrapezoid = "PathTrapezoid"
        case pathTurnDown = "PathTurnDown"
        case pathTurnRight = "PathTurnRight"
        case pathTurnUp = "PathTurnUp"
        case pathTurnUpRight = "PathTurnUpRight"
        case pathUp = "PathUp"
        case pathUser = "PathUser"
        case pathVerticalFigure8 = "PathVerticalFigure8"
        case pathWave = "PathWave"
        case pathZigzag = "PathZigzag"
        case peek = "Peek"
        case pinwheel = "Pinwheel"
        case plus = "Plus"
        case randomBars = "RandomBars"
        case randomEffects = "RandomEffects"
        case riseUp = "RiseUp"
        case shimmer = "Shimmer"
        case sling = "Sling"
        case spin = "Spin"
        case spinner = "Spinner"
        case spiral = "Spiral"
        case split = "Split"
        case stretch = "Stretch"
        case strips = "Strips"
        case styleEmphasis = "StyleEmphasis"
        case swish = "Swish"
        case swivel = "Swivel"
        case teeter = "Teeter"
        case thread = "Thread"
        case transparency = "Transparency"
        case unfold = "Unfold"
        case verticalGrow = "VerticalGrow"
        case wave = "Wave"
        case wedge = "Wedge"
        case wheel = "Wheel"
        case whip = "Whip"
        case wipe = "Wipe"
        case magnify = "Magnify"
        case zoom = "Zoom"
        case oleobjectshow = "OLEObjectShow"
        case oleobjectedit = "OLEObjectEdit"
        case oleobjectopen = "OLEObjectOpen"
    }
    public enum Subtype: String, Codable { 
        case _none = "None"
        case across = "Across"
        case bottom = "Bottom"
        case bottomLeft = "BottomLeft"
        case bottomRight = "BottomRight"
        case center = "Center"
        case clockwise = "Clockwise"
        case counterClockwise = "CounterClockwise"
        case gradualAndCycleClockwise = "GradualAndCycleClockwise"
        case gradualAndCycleCounterClockwise = "GradualAndCycleCounterClockwise"
        case down = "Down"
        case downLeft = "DownLeft"
        case downRight = "DownRight"
        case fontAllCaps = "FontAllCaps"
        case fontBold = "FontBold"
        case fontItalic = "FontItalic"
        case fontShadow = "FontShadow"
        case fontStrikethrough = "FontStrikethrough"
        case fontUnderline = "FontUnderline"
        case gradual = "Gradual"
        case horizontal = "Horizontal"
        case horizontalIn = "HorizontalIn"
        case horizontalOut = "HorizontalOut"
        case _in = "In"
        case inBottom = "InBottom"
        case inCenter = "InCenter"
        case inSlightly = "InSlightly"
        case instant = "Instant"
        case _left = "Left"
        case ordinalMask = "OrdinalMask"
        case out = "Out"
        case outBottom = "OutBottom"
        case outCenter = "OutCenter"
        case outSlightly = "OutSlightly"
        case _right = "Right"
        case slightly = "Slightly"
        case top = "Top"
        case topLeft = "TopLeft"
        case topRight = "TopRight"
        case up = "Up"
        case upLeft = "UpLeft"
        case upRight = "UpRight"
        case vertical = "Vertical"
        case verticalIn = "VerticalIn"
        case verticalOut = "VerticalOut"
        case wheel1 = "Wheel1"
        case wheel2 = "Wheel2"
        case wheel3 = "Wheel3"
        case wheel4 = "Wheel4"
        case wheel8 = "Wheel8"
    }
    public enum PresetClassType: String, Codable { 
        case entrance = "Entrance"
        case exit = "Exit"
        case emphasis = "Emphasis"
        case path = "Path"
        case mediaCall = "MediaCall"
        case oleactionverbs = "OLEActionVerbs"
    }
    public enum TriggerType: String, Codable { 
        case afterPrevious = "AfterPrevious"
        case onClick = "OnClick"
        case withPrevious = "WithPrevious"
    }
    public enum Restart: String, Codable { 
        case always = "Always"
        case whenNotActive = "WhenNotActive"
        case never = "Never"
        case notDefined = "NotDefined"
    }
    /** Effect type. */
    public var type: ModelType?
    /** Effect subtype. */
    public var subtype: Subtype?
    /** Preset class type. */
    public var presetClassType: PresetClassType?
    /** Shape index. */
    public var shapeIndex: Int?
    /** Paragraph index. */
    public var paragraphIndex: Int?
    /** Effect trigger type. */
    public var triggerType: TriggerType?
    /** The percentage of duration accelerate behavior effect. */
    public var accelerate: Double?
    /** True to automatically play the animation in reverse after playing it in the forward direction. */
    public var autoReverse: Bool?
    /** The percentage of duration decelerate behavior effect. */
    public var decelerate: Double?
    /** The duration of animation effect. */
    public var duration: Double?
    /** The number of times the effect should repeat. */
    public var repeatCount: Double?
    /** The number of times the effect should repeat. */
    public var repeatDuration: Double?
    /** The way for a effect to restart after complete. */
    public var restart: Restart?
    /** The percentage by which to speed up (or slow down) the timing. */
    public var speed: Double?
    /** Delay time after trigger. */
    public var triggerDelayTime: Double?
    /** Specifies if the effect will repeat until the end of slide. */
    public var repeatUntilEndSlide: Bool?
    /** Specifies if the effect will repeat until the next click. */
    public var repeatUntilNextClick: Bool?
    /** This attribute specifies if the animation effect stops the previous sound. */
    public var stopPreviousSound: Bool?

    func fillValues(_ source: [String:Any]) throws {
        let typeValue = source["type"] ?? source["Type"]
        if typeValue != nil {
            let typeStringValue = typeValue! as? String
            if typeStringValue != nil {
                let typeEnumValue = ModelType(rawValue: typeStringValue!)
                if typeEnumValue != nil {
                    self.type = typeEnumValue!
                }
            }
        }
        let subtypeValue = source["subtype"] ?? source["Subtype"]
        if subtypeValue != nil {
            let subtypeStringValue = subtypeValue! as? String
            if subtypeStringValue != nil {
                let subtypeEnumValue = Subtype(rawValue: subtypeStringValue!)
                if subtypeEnumValue != nil {
                    self.subtype = subtypeEnumValue!
                }
            }
        }
        let presetClassTypeValue = source["presetClassType"] ?? source["PresetClassType"]
        if presetClassTypeValue != nil {
            let presetClassTypeStringValue = presetClassTypeValue! as? String
            if presetClassTypeStringValue != nil {
                let presetClassTypeEnumValue = PresetClassType(rawValue: presetClassTypeStringValue!)
                if presetClassTypeEnumValue != nil {
                    self.presetClassType = presetClassTypeEnumValue!
                }
            }
        }
        let shapeIndexValue = source["shapeIndex"] ?? source["ShapeIndex"]
        if shapeIndexValue != nil {
            self.shapeIndex = shapeIndexValue! as? Int
        }
        let paragraphIndexValue = source["paragraphIndex"] ?? source["ParagraphIndex"]
        if paragraphIndexValue != nil {
            self.paragraphIndex = paragraphIndexValue! as? Int
        }
        let triggerTypeValue = source["triggerType"] ?? source["TriggerType"]
        if triggerTypeValue != nil {
            let triggerTypeStringValue = triggerTypeValue! as? String
            if triggerTypeStringValue != nil {
                let triggerTypeEnumValue = TriggerType(rawValue: triggerTypeStringValue!)
                if triggerTypeEnumValue != nil {
                    self.triggerType = triggerTypeEnumValue!
                }
            }
        }
        let accelerateValue = source["accelerate"] ?? source["Accelerate"]
        if accelerateValue != nil {
            self.accelerate = accelerateValue! as? Double
        }
        let autoReverseValue = source["autoReverse"] ?? source["AutoReverse"]
        if autoReverseValue != nil {
            self.autoReverse = autoReverseValue! as? Bool
        }
        let decelerateValue = source["decelerate"] ?? source["Decelerate"]
        if decelerateValue != nil {
            self.decelerate = decelerateValue! as? Double
        }
        let durationValue = source["duration"] ?? source["Duration"]
        if durationValue != nil {
            self.duration = durationValue! as? Double
        }
        let repeatCountValue = source["repeatCount"] ?? source["RepeatCount"]
        if repeatCountValue != nil {
            self.repeatCount = repeatCountValue! as? Double
        }
        let repeatDurationValue = source["repeatDuration"] ?? source["RepeatDuration"]
        if repeatDurationValue != nil {
            self.repeatDuration = repeatDurationValue! as? Double
        }
        let restartValue = source["restart"] ?? source["Restart"]
        if restartValue != nil {
            let restartStringValue = restartValue! as? String
            if restartStringValue != nil {
                let restartEnumValue = Restart(rawValue: restartStringValue!)
                if restartEnumValue != nil {
                    self.restart = restartEnumValue!
                }
            }
        }
        let speedValue = source["speed"] ?? source["Speed"]
        if speedValue != nil {
            self.speed = speedValue! as? Double
        }
        let triggerDelayTimeValue = source["triggerDelayTime"] ?? source["TriggerDelayTime"]
        if triggerDelayTimeValue != nil {
            self.triggerDelayTime = triggerDelayTimeValue! as? Double
        }
        let repeatUntilEndSlideValue = source["repeatUntilEndSlide"] ?? source["RepeatUntilEndSlide"]
        if repeatUntilEndSlideValue != nil {
            self.repeatUntilEndSlide = repeatUntilEndSlideValue! as? Bool
        }
        let repeatUntilNextClickValue = source["repeatUntilNextClick"] ?? source["RepeatUntilNextClick"]
        if repeatUntilNextClickValue != nil {
            self.repeatUntilNextClick = repeatUntilNextClickValue! as? Bool
        }
        let stopPreviousSoundValue = source["stopPreviousSound"] ?? source["StopPreviousSound"]
        if stopPreviousSoundValue != nil {
            self.stopPreviousSound = stopPreviousSoundValue! as? Bool
        }
    }

    public init(type: ModelType? = nil, subtype: Subtype? = nil, presetClassType: PresetClassType? = nil, shapeIndex: Int? = nil, paragraphIndex: Int? = nil, triggerType: TriggerType? = nil, accelerate: Double? = nil, autoReverse: Bool? = nil, decelerate: Double? = nil, duration: Double? = nil, repeatCount: Double? = nil, repeatDuration: Double? = nil, restart: Restart? = nil, speed: Double? = nil, triggerDelayTime: Double? = nil, repeatUntilEndSlide: Bool? = nil, repeatUntilNextClick: Bool? = nil, stopPreviousSound: Bool? = nil) {
        self.type = type
        self.subtype = subtype
        self.presetClassType = presetClassType
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.triggerType = triggerType
        self.accelerate = accelerate
        self.autoReverse = autoReverse
        self.decelerate = decelerate
        self.duration = duration
        self.repeatCount = repeatCount
        self.repeatDuration = repeatDuration
        self.restart = restart
        self.speed = speed
        self.triggerDelayTime = triggerDelayTime
        self.repeatUntilEndSlide = repeatUntilEndSlide
        self.repeatUntilNextClick = repeatUntilNextClick
        self.stopPreviousSound = stopPreviousSound
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case subtype
        case presetClassType
        case shapeIndex
        case paragraphIndex
        case triggerType
        case accelerate
        case autoReverse
        case decelerate
        case duration
        case repeatCount
        case repeatDuration
        case restart
        case speed
        case triggerDelayTime
        case repeatUntilEndSlide
        case repeatUntilNextClick
        case stopPreviousSound
    }

}

