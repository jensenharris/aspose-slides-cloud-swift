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


/** Represents GeometryShape resource. */
public class GeometryShape: ShapeBase {

    public enum ShapeType: String, Codable { 
        case custom = "Custom"
        case line = "Line"
        case lineInverse = "LineInverse"
        case triangle = "Triangle"
        case rightTriangle = "RightTriangle"
        case rectangle = "Rectangle"
        case diamond = "Diamond"
        case parallelogram = "Parallelogram"
        case trapezoid = "Trapezoid"
        case nonIsoscelesTrapezoid = "NonIsoscelesTrapezoid"
        case pentagon = "Pentagon"
        case hexagon = "Hexagon"
        case heptagon = "Heptagon"
        case octagon = "Octagon"
        case decagon = "Decagon"
        case dodecagon = "Dodecagon"
        case fourPointedStar = "FourPointedStar"
        case fivePointedStar = "FivePointedStar"
        case sixPointedStar = "SixPointedStar"
        case sevenPointedStar = "SevenPointedStar"
        case eightPointedStar = "EightPointedStar"
        case tenPointedStar = "TenPointedStar"
        case twelvePointedStar = "TwelvePointedStar"
        case sixteenPointedStar = "SixteenPointedStar"
        case twentyFourPointedStar = "TwentyFourPointedStar"
        case thirtyTwoPointedStar = "ThirtyTwoPointedStar"
        case roundCornerRectangle = "RoundCornerRectangle"
        case oneRoundCornerRectangle = "OneRoundCornerRectangle"
        case twoSamesideRoundCornerRectangle = "TwoSamesideRoundCornerRectangle"
        case twoDiagonalRoundCornerRectangle = "TwoDiagonalRoundCornerRectangle"
        case oneSnipOneRoundCornerRectangle = "OneSnipOneRoundCornerRectangle"
        case oneSnipCornerRectangle = "OneSnipCornerRectangle"
        case twoSamesideSnipCornerRectangle = "TwoSamesideSnipCornerRectangle"
        case twoDiagonalSnipCornerRectangle = "TwoDiagonalSnipCornerRectangle"
        case plaque = "Plaque"
        case ellipse = "Ellipse"
        case teardrop = "Teardrop"
        case homePlate = "HomePlate"
        case chevron = "Chevron"
        case pieWedge = "PieWedge"
        case pie = "Pie"
        case blockArc = "BlockArc"
        case donut = "Donut"
        case noSmoking = "NoSmoking"
        case rightArrow = "RightArrow"
        case leftArrow = "LeftArrow"
        case upArrow = "UpArrow"
        case downArrow = "DownArrow"
        case stripedRightArrow = "StripedRightArrow"
        case notchedRightArrow = "NotchedRightArrow"
        case bentUpArrow = "BentUpArrow"
        case leftRightArrow = "LeftRightArrow"
        case upDownArrow = "UpDownArrow"
        case leftUpArrow = "LeftUpArrow"
        case leftRightUpArrow = "LeftRightUpArrow"
        case quadArrow = "QuadArrow"
        case calloutLeftArrow = "CalloutLeftArrow"
        case calloutRightArrow = "CalloutRightArrow"
        case calloutUpArrow = "CalloutUpArrow"
        case calloutDownArrow = "CalloutDownArrow"
        case calloutLeftRightArrow = "CalloutLeftRightArrow"
        case calloutUpDownArrow = "CalloutUpDownArrow"
        case calloutQuadArrow = "CalloutQuadArrow"
        case bentArrow = "BentArrow"
        case uturnarrow = "UTurnArrow"
        case circularArrow = "CircularArrow"
        case leftCircularArrow = "LeftCircularArrow"
        case leftRightCircularArrow = "LeftRightCircularArrow"
        case curvedRightArrow = "CurvedRightArrow"
        case curvedLeftArrow = "CurvedLeftArrow"
        case curvedUpArrow = "CurvedUpArrow"
        case curvedDownArrow = "CurvedDownArrow"
        case swooshArrow = "SwooshArrow"
        case cube = "Cube"
        case can = "Can"
        case lightningBolt = "LightningBolt"
        case heart = "Heart"
        case sun = "Sun"
        case moon = "Moon"
        case smileyFace = "SmileyFace"
        case irregularSeal1 = "IrregularSeal1"
        case irregularSeal2 = "IrregularSeal2"
        case foldedCorner = "FoldedCorner"
        case bevel = "Bevel"
        case frame = "Frame"
        case halfFrame = "HalfFrame"
        case corner = "Corner"
        case diagonalStripe = "DiagonalStripe"
        case chord = "Chord"
        case curvedArc = "CurvedArc"
        case leftBracket = "LeftBracket"
        case rightBracket = "RightBracket"
        case leftBrace = "LeftBrace"
        case rightBrace = "RightBrace"
        case bracketPair = "BracketPair"
        case bracePair = "BracePair"
        case straightConnector1 = "StraightConnector1"
        case bentConnector2 = "BentConnector2"
        case bentConnector3 = "BentConnector3"
        case bentConnector4 = "BentConnector4"
        case bentConnector5 = "BentConnector5"
        case curvedConnector2 = "CurvedConnector2"
        case curvedConnector3 = "CurvedConnector3"
        case curvedConnector4 = "CurvedConnector4"
        case curvedConnector5 = "CurvedConnector5"
        case callout1 = "Callout1"
        case callout2 = "Callout2"
        case callout3 = "Callout3"
        case callout1WithAccent = "Callout1WithAccent"
        case callout2WithAccent = "Callout2WithAccent"
        case callout3WithAccent = "Callout3WithAccent"
        case callout1WithBorder = "Callout1WithBorder"
        case callout2WithBorder = "Callout2WithBorder"
        case callout3WithBorder = "Callout3WithBorder"
        case callout1WithBorderAndAccent = "Callout1WithBorderAndAccent"
        case callout2WithBorderAndAccent = "Callout2WithBorderAndAccent"
        case callout3WithBorderAndAccent = "Callout3WithBorderAndAccent"
        case calloutWedgeRectangle = "CalloutWedgeRectangle"
        case calloutWedgeRoundRectangle = "CalloutWedgeRoundRectangle"
        case calloutWedgeEllipse = "CalloutWedgeEllipse"
        case calloutCloud = "CalloutCloud"
        case cloud = "Cloud"
        case ribbon = "Ribbon"
        case ribbon2 = "Ribbon2"
        case ellipseRibbon = "EllipseRibbon"
        case ellipseRibbon2 = "EllipseRibbon2"
        case leftRightRibbon = "LeftRightRibbon"
        case verticalScroll = "VerticalScroll"
        case horizontalScroll = "HorizontalScroll"
        case wave = "Wave"
        case doubleWave = "DoubleWave"
        case plus = "Plus"
        case processFlow = "ProcessFlow"
        case decisionFlow = "DecisionFlow"
        case inputOutputFlow = "InputOutputFlow"
        case predefinedProcessFlow = "PredefinedProcessFlow"
        case internalStorageFlow = "InternalStorageFlow"
        case documentFlow = "DocumentFlow"
        case multiDocumentFlow = "MultiDocumentFlow"
        case terminatorFlow = "TerminatorFlow"
        case preparationFlow = "PreparationFlow"
        case manualInputFlow = "ManualInputFlow"
        case manualOperationFlow = "ManualOperationFlow"
        case connectorFlow = "ConnectorFlow"
        case punchedCardFlow = "PunchedCardFlow"
        case punchedTapeFlow = "PunchedTapeFlow"
        case summingJunctionFlow = "SummingJunctionFlow"
        case orFlow = "OrFlow"
        case collateFlow = "CollateFlow"
        case sortFlow = "SortFlow"
        case extractFlow = "ExtractFlow"
        case mergeFlow = "MergeFlow"
        case offlineStorageFlow = "OfflineStorageFlow"
        case onlineStorageFlow = "OnlineStorageFlow"
        case magneticTapeFlow = "MagneticTapeFlow"
        case magneticDiskFlow = "MagneticDiskFlow"
        case magneticDrumFlow = "MagneticDrumFlow"
        case displayFlow = "DisplayFlow"
        case delayFlow = "DelayFlow"
        case alternateProcessFlow = "AlternateProcessFlow"
        case offPageConnectorFlow = "OffPageConnectorFlow"
        case blankButton = "BlankButton"
        case homeButton = "HomeButton"
        case helpButton = "HelpButton"
        case informationButton = "InformationButton"
        case forwardOrNextButton = "ForwardOrNextButton"
        case backOrPreviousButton = "BackOrPreviousButton"
        case endButton = "EndButton"
        case beginningButton = "BeginningButton"
        case returnButton = "ReturnButton"
        case documentButton = "DocumentButton"
        case soundButton = "SoundButton"
        case movieButton = "MovieButton"
        case gear6 = "Gear6"
        case gear9 = "Gear9"
        case funnel = "Funnel"
        case plusMath = "PlusMath"
        case minusMath = "MinusMath"
        case multiplyMath = "MultiplyMath"
        case divideMath = "DivideMath"
        case equalMath = "EqualMath"
        case notEqualMath = "NotEqualMath"
        case cornerTabs = "CornerTabs"
        case squareTabs = "SquareTabs"
        case plaqueTabs = "PlaqueTabs"
        case chartX = "ChartX"
        case chartStar = "ChartStar"
        case chartPlus = "ChartPlus"
        case notDefined = "NotDefined"
    }
    /** Combined shape type. */
    public var shapeType: ShapeType?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let shapeTypeValue = source["shapeType"] ?? source["ShapeType"]
        if shapeTypeValue != nil {
            let shapeTypeStringValue = shapeTypeValue! as? String
            if shapeTypeStringValue != nil {
                let shapeTypeEnumValue = ShapeType(rawValue: shapeTypeStringValue!)
                if shapeTypeEnumValue != nil {
                    self.shapeType = shapeTypeEnumValue!
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, X: Double? = nil, Y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, shapeType: ShapeType? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, X: X, Y: Y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type)
        self.shapeType = shapeType
    }

    private enum CodingKeys: String, CodingKey {
        case shapeType
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        shapeType = try? values.decode(ShapeType.self, forKey: .shapeType)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (shapeType != nil) {
            try? container.encode(shapeType, forKey: .shapeType)
        }
    }

}

