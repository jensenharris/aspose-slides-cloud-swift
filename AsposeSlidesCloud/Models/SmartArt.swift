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


/** Represents SmartArt shape resource. */
public class SmartArt: ShapeBase {

    public enum Layout: String, Codable { 
        case accentProcess = "AccentProcess"
        case accentedPicture = "AccentedPicture"
        case alternatingFlow = "AlternatingFlow"
        case alternatingHexagons = "AlternatingHexagons"
        case alternatingPictureBlocks = "AlternatingPictureBlocks"
        case alternatingPictureCircles = "AlternatingPictureCircles"
        case arrowRibbon = "ArrowRibbon"
        case ascendingPictureAccentProcess = "AscendingPictureAccentProcess"
        case balance = "Balance"
        case basicBendingProcess = "BasicBendingProcess"
        case basicBlockList = "BasicBlockList"
        case basicChevronProcess = "BasicChevronProcess"
        case basicCycle = "BasicCycle"
        case basicMatrix = "BasicMatrix"
        case basicPie = "BasicPie"
        case basicProcess = "BasicProcess"
        case basicPyramid = "BasicPyramid"
        case basicRadial = "BasicRadial"
        case basicTarget = "BasicTarget"
        case basicTimeline = "BasicTimeline"
        case basicVenn = "BasicVenn"
        case bendingPictureAccentList = "BendingPictureAccentList"
        case bendingPictureBlocks = "BendingPictureBlocks"
        case bendingPictureCaption = "BendingPictureCaption"
        case bendingPictureCaptionList = "BendingPictureCaptionList"
        case bendingPictureSemiTransparentText = "BendingPictureSemiTransparentText"
        case blockCycle = "BlockCycle"
        case bubblePictureList = "BubblePictureList"
        case captionedPictures = "CaptionedPictures"
        case chevronList = "ChevronList"
        case circleAccentTimeline = "CircleAccentTimeline"
        case circleArrowProcess = "CircleArrowProcess"
        case circlePictureHierarchy = "CirclePictureHierarchy"
        case circleRelationship = "CircleRelationship"
        case circularBendingProcess = "CircularBendingProcess"
        case circularPictureCallout = "CircularPictureCallout"
        case closedChevronProcess = "ClosedChevronProcess"
        case continuousArrowProcess = "ContinuousArrowProcess"
        case continuousBlockProcess = "ContinuousBlockProcess"
        case continuousCycle = "ContinuousCycle"
        case continuousPictureList = "ContinuousPictureList"
        case convergingArrows = "ConvergingArrows"
        case convergingRadial = "ConvergingRadial"
        case counterbalanceArrows = "CounterbalanceArrows"
        case cycleMatrix = "CycleMatrix"
        case descendingBlockList = "DescendingBlockList"
        case descendingProcess = "DescendingProcess"
        case detailedProcess = "DetailedProcess"
        case divergingArrows = "DivergingArrows"
        case divergingRadial = "DivergingRadial"
        case equation = "Equation"
        case framedTextPicture = "FramedTextPicture"
        case funnel = "Funnel"
        case gear = "Gear"
        case gridMatrix = "GridMatrix"
        case groupedList = "GroupedList"
        case halfCircleOrganizationChart = "HalfCircleOrganizationChart"
        case hexagonCluster = "HexagonCluster"
        case hierarchy = "Hierarchy"
        case hierarchyList = "HierarchyList"
        case horizontalBulletList = "HorizontalBulletList"
        case horizontalHierarchy = "HorizontalHierarchy"
        case horizontalLabeledHierarchy = "HorizontalLabeledHierarchy"
        case horizontalMultiLevelHierarchy = "HorizontalMultiLevelHierarchy"
        case horizontalOrganizationChart = "HorizontalOrganizationChart"
        case horizontalPictureList = "HorizontalPictureList"
        case increasingArrowsProcess = "IncreasingArrowsProcess"
        case increasingCircleProcess = "IncreasingCircleProcess"
        case invertedPyramid = "InvertedPyramid"
        case labeledHierarchy = "LabeledHierarchy"
        case linearVenn = "LinearVenn"
        case linedList = "LinedList"
        case multidirectionalCycle = "MultidirectionalCycle"
        case nameandTitleOrganizationChart = "NameandTitleOrganizationChart"
        case nestedTarget = "NestedTarget"
        case nondirectionalCycle = "NondirectionalCycle"
        case opposingArrows = "OpposingArrows"
        case opposingIdeas = "OpposingIdeas"
        case organizationChart = "OrganizationChart"
        case phasedProcess = "PhasedProcess"
        case pictureAccentBlocks = "PictureAccentBlocks"
        case pictureAccentList = "PictureAccentList"
        case pictureAccentProcess = "PictureAccentProcess"
        case pictureCaptionList = "PictureCaptionList"
        case pictureGrid = "PictureGrid"
        case pictureLineup = "PictureLineup"
        case pictureStrips = "PictureStrips"
        case pieProcess = "PieProcess"
        case plusandMinus = "PlusandMinus"
        case processArrows = "ProcessArrows"
        case processList = "ProcessList"
        case pyramidList = "PyramidList"
        case radialCluster = "RadialCluster"
        case radialCycle = "RadialCycle"
        case radialList = "RadialList"
        case radialVenn = "RadialVenn"
        case randomToResultProcess = "RandomToResultProcess"
        case repeatingBendingProcess = "RepeatingBendingProcess"
        case reverseList = "ReverseList"
        case segmentedCycle = "SegmentedCycle"
        case segmentedProcess = "SegmentedProcess"
        case segmentedPyramid = "SegmentedPyramid"
        case snapshotPictureList = "SnapshotPictureList"
        case spiralPicture = "SpiralPicture"
        case squareAccentList = "SquareAccentList"
        case stackedList = "StackedList"
        case stackedVenn = "StackedVenn"
        case staggeredProcess = "StaggeredProcess"
        case stepDownProcess = "StepDownProcess"
        case stepUpProcess = "StepUpProcess"
        case subStepProcess = "SubStepProcess"
        case tableHierarchy = "TableHierarchy"
        case tableList = "TableList"
        case targetList = "TargetList"
        case textCycle = "TextCycle"
        case titlePictureLineup = "TitlePictureLineup"
        case titledMatrix = "TitledMatrix"
        case titledPictureAccentList = "TitledPictureAccentList"
        case titledPictureBlocks = "TitledPictureBlocks"
        case trapezoidList = "TrapezoidList"
        case upwardArrow = "UpwardArrow"
        case verticalAccentList = "VerticalAccentList"
        case verticalArrowList = "VerticalArrowList"
        case verticalBendingProcess = "VerticalBendingProcess"
        case verticalBlockList = "VerticalBlockList"
        case verticalBoxList = "VerticalBoxList"
        case verticalBulletList = "VerticalBulletList"
        case verticalChevronList = "VerticalChevronList"
        case verticalCircleList = "VerticalCircleList"
        case verticalCurvedList = "VerticalCurvedList"
        case verticalEquation = "VerticalEquation"
        case verticalPictureAccentList = "VerticalPictureAccentList"
        case verticalPictureList = "VerticalPictureList"
        case verticalProcess = "VerticalProcess"
        case custom = "Custom"
        case pictureOrganizationChart = "PictureOrganizationChart"
    }
    public enum QuickStyle: String, Codable { 
        case simpleFill = "SimpleFill"
        case whiteOutline = "WhiteOutline"
        case subtleEffect = "SubtleEffect"
        case moderateEffect = "ModerateEffect"
        case intenceEffect = "IntenceEffect"
        case polished = "Polished"
        case inset = "Inset"
        case cartoon = "Cartoon"
        case powder = "Powder"
        case brickScene = "BrickScene"
        case flatScene = "FlatScene"
        case metallicScene = "MetallicScene"
        case sunsetScene = "SunsetScene"
        case birdsEyeScene = "BirdsEyeScene"
    }
    public enum ColorStyle: String, Codable { 
        case dark1Outline = "Dark1Outline"
        case dark2Outline = "Dark2Outline"
        case darkFill = "DarkFill"
        case colorfulAccentColors = "ColorfulAccentColors"
        case colorfulAccentColors2to3 = "ColorfulAccentColors2to3"
        case colorfulAccentColors3to4 = "ColorfulAccentColors3to4"
        case colorfulAccentColors4to5 = "ColorfulAccentColors4to5"
        case colorfulAccentColors5to6 = "ColorfulAccentColors5to6"
        case coloredOutlineAccent1 = "ColoredOutlineAccent1"
        case coloredFillAccent1 = "ColoredFillAccent1"
        case gradientRangeAccent1 = "GradientRangeAccent1"
        case gradientLoopAccent1 = "GradientLoopAccent1"
        case transparentGradientRangeAccent1 = "TransparentGradientRangeAccent1"
        case coloredOutlineAccent2 = "ColoredOutlineAccent2"
        case coloredFillAccent2 = "ColoredFillAccent2"
        case gradientRangeAccent2 = "GradientRangeAccent2"
        case gradientLoopAccent2 = "GradientLoopAccent2"
        case transparentGradientRangeAccent2 = "TransparentGradientRangeAccent2"
        case coloredOutlineAccent3 = "ColoredOutlineAccent3"
        case coloredFillAccent3 = "ColoredFillAccent3"
        case gradientRangeAccent3 = "GradientRangeAccent3"
        case gradientLoopAccent3 = "GradientLoopAccent3"
        case transparentGradientRangeAccent3 = "TransparentGradientRangeAccent3"
        case coloredOutlineAccent4 = "ColoredOutlineAccent4"
        case coloredFillAccent4 = "ColoredFillAccent4"
        case gradientRangeAccent4 = "GradientRangeAccent4"
        case gradientLoopAccent4 = "GradientLoopAccent4"
        case transparentGradientRangeAccent4 = "TransparentGradientRangeAccent4"
        case coloredOutlineAccent5 = "ColoredOutlineAccent5"
        case coloredFillAccent5 = "ColoredFillAccent5"
        case gradientRangeAccent5 = "GradientRangeAccent5"
        case gradientLoopAccent5 = "GradientLoopAccent5"
        case transparentGradientRangeAccent5 = "TransparentGradientRangeAccent5"
        case coloredOutlineAccent6 = "ColoredOutlineAccent6"
        case coloredFillAccent6 = "ColoredFillAccent6"
        case gradientRangeAccent6 = "GradientRangeAccent6"
        case gradientLoopAccent6 = "GradientLoopAccent6"
        case transparentGradientRangeAccent6 = "TransparentGradientRangeAccent6"
    }
    /** Layout type. */
    public var layout: Layout?
    /** Quick style. */
    public var quickStyle: QuickStyle?
    /** Color style. */
    public var colorStyle: ColorStyle?
    /** Collection of nodes in SmartArt object.              */
    public var nodes: [SmartArtNode]?
    /** The state of the SmartArt diagram with regard to (left-to-right) LTR or (right-to-left) RTL, if the diagram supports reversal. */
    public var isReversed: Bool?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let layoutValue = source["layout"] ?? source["Layout"]
        if layoutValue != nil {
            let layoutStringValue = layoutValue! as? String
            if layoutStringValue != nil {
                let layoutEnumValue = Layout(rawValue: layoutStringValue!)
                if layoutEnumValue != nil {
                    self.layout = layoutEnumValue!
                }
            }
        }
        let quickStyleValue = source["quickStyle"] ?? source["QuickStyle"]
        if quickStyleValue != nil {
            let quickStyleStringValue = quickStyleValue! as? String
            if quickStyleStringValue != nil {
                let quickStyleEnumValue = QuickStyle(rawValue: quickStyleStringValue!)
                if quickStyleEnumValue != nil {
                    self.quickStyle = quickStyleEnumValue!
                }
            }
        }
        let colorStyleValue = source["colorStyle"] ?? source["ColorStyle"]
        if colorStyleValue != nil {
            let colorStyleStringValue = colorStyleValue! as? String
            if colorStyleStringValue != nil {
                let colorStyleEnumValue = ColorStyle(rawValue: colorStyleStringValue!)
                if colorStyleEnumValue != nil {
                    self.colorStyle = colorStyleEnumValue!
                }
            }
        }
        let nodesValue = source["nodes"] ?? source["Nodes"]
        if nodesValue != nil {
            var nodesArray: [SmartArtNode] = []
            let nodesDictionaryValue = nodesValue! as? [Any]
            if nodesDictionaryValue != nil {
                nodesDictionaryValue!.forEach { nodesAnyItem in
                    let nodesItem = nodesAnyItem as? [String:Any]
                    var added = false
                    if nodesItem != nil {
                        let (nodesInstance, error) = ClassRegistry.getClassFromDictionary(SmartArtNode.self, nodesItem!)
                        if error == nil && nodesInstance != nil {
                            let nodesArrayItem = nodesInstance! as? SmartArtNode
                            if nodesArrayItem != nil {
                                nodesArray.append(nodesArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        nodesArray.append(SmartArtNode())
                    }
                }
            }
            self.nodes = nodesArray
        }
        let isReversedValue = source["isReversed"] ?? source["IsReversed"]
        if isReversedValue != nil {
            self.isReversed = isReversedValue! as? Bool
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, name: String? = nil, width: Double? = nil, height: Double? = nil, alternativeText: String? = nil, alternativeTextTitle: String? = nil, hidden: Bool? = nil, x: Double? = nil, y: Double? = nil, zOrderPosition: Int? = nil, fillFormat: FillFormat? = nil, effectFormat: EffectFormat? = nil, threeDFormat: ThreeDFormat? = nil, lineFormat: LineFormat? = nil, hyperlinkClick: Hyperlink? = nil, hyperlinkMouseOver: Hyperlink? = nil, type: ModelType? = nil, layout: Layout? = nil, quickStyle: QuickStyle? = nil, colorStyle: ColorStyle? = nil, nodes: [SmartArtNode]? = nil, isReversed: Bool? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks, name: name, width: width, height: height, alternativeText: alternativeText, alternativeTextTitle: alternativeTextTitle, hidden: hidden, x: x, y: y, zOrderPosition: zOrderPosition, fillFormat: fillFormat, effectFormat: effectFormat, threeDFormat: threeDFormat, lineFormat: lineFormat, hyperlinkClick: hyperlinkClick, hyperlinkMouseOver: hyperlinkMouseOver, type: type)
        self.layout = layout
        self.quickStyle = quickStyle
        self.colorStyle = colorStyle
        self.nodes = nodes
        self.isReversed = isReversed
        self.type = ModelType.smartArt
    }

    private enum CodingKeys: String, CodingKey {
        case layout
        case quickStyle
        case colorStyle
        case nodes
        case isReversed
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        layout = try? values.decode(Layout.self, forKey: .layout)
        quickStyle = try? values.decode(QuickStyle.self, forKey: .quickStyle)
        colorStyle = try? values.decode(ColorStyle.self, forKey: .colorStyle)
        nodes = try? values.decode([SmartArtNode].self, forKey: .nodes)
        isReversed = try? values.decode(Bool.self, forKey: .isReversed)
        self.type = ModelType.smartArt
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (layout != nil) {
            try? container.encode(layout, forKey: .layout)
        }
        if (quickStyle != nil) {
            try? container.encode(quickStyle, forKey: .quickStyle)
        }
        if (colorStyle != nil) {
            try? container.encode(colorStyle, forKey: .colorStyle)
        }
        if (nodes != nil) {
            try? container.encode(nodes, forKey: .nodes)
        }
        if (isReversed != nil) {
            try? container.encode(isReversed, forKey: .isReversed)
        }
    }

}

