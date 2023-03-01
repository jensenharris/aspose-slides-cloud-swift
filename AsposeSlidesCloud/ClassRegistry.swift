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

class ClassRegistry {
    class func getClassInstance(_ baseType: Any, _ object: Data) -> (decodableObj: Decodable?, error: Error?) {
        let json = try? JSONSerialization.jsonObject(with: object)
        if json != nil {
            let jsonDictionary = json! as? Dictionary<String, Any>
            if jsonDictionary != nil {
                return getClassFromDictionary(baseType, jsonDictionary!)
            }
        }
        return (nil, nil)
    }

    class func getClassFromDictionary(_ baseType: Any, _ object: Dictionary<String, Any>) -> (decodableObj: Decodable?, error: Error?) {
        return createInstance(getClassname("\(baseType)", object), object)
    }

    class func getClassname(_ className: String, _ keys: Dictionary<String, Any>) -> String {
        let subclass = getSubclass(className, keys)
        if subclass != "" {
            return subclass
        }
        return className
    }

    class func isSubclass(_ subType: String, _ baseType: String) -> Bool {
        if subType == baseType {
            return true
        }
        if let midType = typeHierarchy[subType] {
            return isSubclass(midType, baseType)
        }
        return false
    }

    class func getSubclass(_ baseType: String, _ keys: Dictionary<String, Any>) -> String {
        if isOfClass(baseType, keys) {
            var hasDescendants = false
            for key in typeHierarchy.keys {
                if typeHierarchy[key] == baseType {
                    hasDescendants = true
                    let newType = getSubclass(key, keys)
                    if newType != "" {
                        return newType
                    }
                }
            }
            if !hasDescendants {
                return baseType
            }
        }
        return ""
    }

    class func isOfClass(_ classType: String, _ keys: Dictionary<String, Any>) -> Bool {
        let determiners = getTypeDeterminers(classType)
        var isGood = true
        if (determiners != nil) {
            for key in determiners!.keys {
                var isGoodKey = false
                var value = keys[key]
                if value != nil && "\(determiners![key]!)" == "\(value!)" {
                    isGoodKey = true
                }
                value = keys[key.prefix(1).lowercased() + key.dropFirst()]
                if value != nil && "\(determiners![key]!)" == "\(value!)" {
                    isGoodKey = true
                }
                isGood = isGood && isGoodKey
            }
        }
        return isGood
    }

    class func createInstance(_ className: String, _ object: Dictionary<String, Any>) -> (decodableObj: Decodable?, error: Error?) {
        if false { //just to simplify autogeneration
        } else if className == "AccentElement" {
            let value = AccentElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AccessPermissions" {
            let value = AccessPermissions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AddLayoutSlide" {
            let value = AddLayoutSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AddMasterSlide" {
            let value = AddMasterSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AddShape" {
            let value = AddShape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AddSlide" {
            let value = AddSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AlphaBiLevelEffect" {
            let value = AlphaBiLevelEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AlphaCeilingEffect" {
            let value = AlphaCeilingEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AlphaFloorEffect" {
            let value = AlphaFloorEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AlphaInverseEffect" {
            let value = AlphaInverseEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AlphaModulateEffect" {
            let value = AlphaModulateEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AlphaModulateFixedEffect" {
            let value = AlphaModulateFixedEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AlphaReplaceEffect" {
            let value = AlphaReplaceEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ApiInfo" {
            let value = ApiInfo()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ArcToPathSegment" {
            let value = ArcToPathSegment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ArrayElement" {
            let value = ArrayElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ArrowHeadProperties" {
            let value = ArrowHeadProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "AudioFrame" {
            let value = AudioFrame()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Axes" {
            let value = Axes()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Axis" {
            let value = Axis()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BarElement" {
            let value = BarElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Base64InputFile" {
            let value = Base64InputFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BiLevelEffect" {
            let value = BiLevelEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BlockElement" {
            let value = BlockElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BlurEffect" {
            let value = BlurEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BlurImageEffect" {
            let value = BlurImageEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BorderBoxElement" {
            let value = BorderBoxElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BoxElement" {
            let value = BoxElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BubbleChartDataPoint" {
            let value = BubbleChartDataPoint()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "BubbleSeries" {
            let value = BubbleSeries()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Camera" {
            let value = Camera()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Chart" {
            let value = Chart()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ChartCategory" {
            let value = ChartCategory()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ChartLinesFormat" {
            let value = ChartLinesFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ChartSeriesGroup" {
            let value = ChartSeriesGroup()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ChartTitle" {
            let value = ChartTitle()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ChartWall" {
            let value = ChartWall()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ClosePathSegment" {
            let value = ClosePathSegment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ColorChangeEffect" {
            let value = ColorChangeEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ColorReplaceEffect" {
            let value = ColorReplaceEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ColorScheme" {
            let value = ColorScheme()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "CommonSlideViewProperties" {
            let value = CommonSlideViewProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Connector" {
            let value = Connector()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "CubicBezierToPathSegment" {
            let value = CubicBezierToPathSegment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "CustomDashPattern" {
            let value = CustomDashPattern()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DataPoint" {
            let value = DataPoint()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DataSource" {
            let value = DataSource()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DelimiterElement" {
            let value = DelimiterElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DiscUsage" {
            let value = DiscUsage()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Document" {
            let value = Document()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DocumentProperties" {
            let value = DocumentProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DocumentProperty" {
            let value = DocumentProperty()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DocumentReplaceResult" {
            let value = DocumentReplaceResult()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "DuotoneEffect" {
            let value = DuotoneEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Effect" {
            let value = Effect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "EffectFormat" {
            let value = EffectFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "EntityExists" {
            let value = EntityExists()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ErrorDetails" {
            let value = ErrorDetails()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ExportOptions" {
            let value = ExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FileVersion" {
            let value = FileVersion()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FileVersions" {
            let value = FileVersions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FilesList" {
            let value = FilesList()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FilesUploadResult" {
            let value = FilesUploadResult()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FillFormat" {
            let value = FillFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FillOverlayEffect" {
            let value = FillOverlayEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FillOverlayImageEffect" {
            let value = FillOverlayImageEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FontData" {
            let value = FontData()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FontFallbackRule" {
            let value = FontFallbackRule()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FontScheme" {
            let value = FontScheme()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FontSet" {
            let value = FontSet()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FontSubstRule" {
            let value = FontSubstRule()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FontsData" {
            let value = FontsData()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FormatScheme" {
            let value = FormatScheme()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FractionElement" {
            let value = FractionElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "FunctionElement" {
            let value = FunctionElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GeometryPath" {
            let value = GeometryPath()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GeometryPaths" {
            let value = GeometryPaths()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GeometryShape" {
            let value = GeometryShape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GifExportOptions" {
            let value = GifExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GlowEffect" {
            let value = GlowEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GradientFill" {
            let value = GradientFill()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GradientFillStop" {
            let value = GradientFillStop()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GraphicalObject" {
            let value = GraphicalObject()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GrayScaleEffect" {
            let value = GrayScaleEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GroupShape" {
            let value = GroupShape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "GroupingCharacterElement" {
            let value = GroupingCharacterElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "HeaderFooter" {
            let value = HeaderFooter()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "HslEffect" {
            let value = HslEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Html5ExportOptions" {
            let value = Html5ExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "HtmlExportOptions" {
            let value = HtmlExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Hyperlink" {
            let value = Hyperlink()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "IShapeExportOptions" {
            let value = IShapeExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Image" {
            let value = Image()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ImageExportOptions" {
            let value = ImageExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ImageExportOptionsBase" {
            let value = ImageExportOptionsBase()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ImageTransformEffect" {
            let value = ImageTransformEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Images" {
            let value = Images()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "InnerShadowEffect" {
            let value = InnerShadowEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Input" {
            let value = Input()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "InputFile" {
            let value = InputFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "InteractiveSequence" {
            let value = InteractiveSequence()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LayoutSlide" {
            let value = LayoutSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LayoutSlides" {
            let value = LayoutSlides()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LeftSubSuperscriptElement" {
            let value = LeftSubSuperscriptElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Legend" {
            let value = Legend()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LightRig" {
            let value = LightRig()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LimitElement" {
            let value = LimitElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LineFormat" {
            let value = LineFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LineToPathSegment" {
            let value = LineToPathSegment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Literals" {
            let value = Literals()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "LuminanceEffect" {
            let value = LuminanceEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "MasterSlide" {
            let value = MasterSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "MasterSlides" {
            let value = MasterSlides()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "MathElement" {
            let value = MathElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "MathParagraph" {
            let value = MathParagraph()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "MatrixElement" {
            let value = MatrixElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Merge" {
            let value = Merge()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "MergingSource" {
            let value = MergingSource()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ModelError" {
            let value = ModelError()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "MoveToPathSegment" {
            let value = MoveToPathSegment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "NaryOperatorElement" {
            let value = NaryOperatorElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "NoFill" {
            let value = NoFill()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "NormalViewRestoredProperties" {
            let value = NormalViewRestoredProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "NotesSlide" {
            let value = NotesSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "NotesSlideHeaderFooter" {
            let value = NotesSlideHeaderFooter()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ObjectExist" {
            let value = ObjectExist()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "OleObjectFrame" {
            let value = OleObjectFrame()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "OneValueChartDataPoint" {
            let value = OneValueChartDataPoint()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "OneValueSeries" {
            let value = OneValueSeries()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "OrderedMergeRequest" {
            let value = OrderedMergeRequest()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "OuterShadowEffect" {
            let value = OuterShadowEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "OutputFile" {
            let value = OutputFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Paragraph" {
            let value = Paragraph()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ParagraphFormat" {
            let value = ParagraphFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Paragraphs" {
            let value = Paragraphs()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PathInputFile" {
            let value = PathInputFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PathOutputFile" {
            let value = PathOutputFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PathSegment" {
            let value = PathSegment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PatternFill" {
            let value = PatternFill()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PdfExportOptions" {
            let value = PdfExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PictureFill" {
            let value = PictureFill()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PictureFrame" {
            let value = PictureFrame()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Pipeline" {
            let value = Pipeline()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Placeholder" {
            let value = Placeholder()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Placeholders" {
            let value = Placeholders()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PlotArea" {
            let value = PlotArea()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Portion" {
            let value = Portion()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PortionFormat" {
            let value = PortionFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Portions" {
            let value = Portions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PptxExportOptions" {
            let value = PptxExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PresentationToMerge" {
            let value = PresentationToMerge()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PresentationsMergeRequest" {
            let value = PresentationsMergeRequest()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "PresetShadowEffect" {
            let value = PresetShadowEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ProtectionProperties" {
            let value = ProtectionProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "QuadraticBezierToPathSegment" {
            let value = QuadraticBezierToPathSegment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "RadicalElement" {
            let value = RadicalElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ReflectionEffect" {
            let value = ReflectionEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "RemoveShape" {
            let value = RemoveShape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "RemoveSlide" {
            let value = RemoveSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ReorderSlide" {
            let value = ReorderSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ReplaceText" {
            let value = ReplaceText()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "RequestInputFile" {
            let value = RequestInputFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ResetSlide" {
            let value = ResetSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ResourceBase" {
            let value = ResourceBase()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ResourceUri" {
            let value = ResourceUri()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ResponseOutputFile" {
            let value = ResponseOutputFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "RightSubSuperscriptElement" {
            let value = RightSubSuperscriptElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Save" {
            let value = Save()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SaveShape" {
            let value = SaveShape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SaveSlide" {
            let value = SaveSlide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ScatterChartDataPoint" {
            let value = ScatterChartDataPoint()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ScatterSeries" {
            let value = ScatterSeries()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Section" {
            let value = Section()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SectionZoomFrame" {
            let value = SectionZoomFrame()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Sections" {
            let value = Sections()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Series" {
            let value = Series()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SeriesMarker" {
            let value = SeriesMarker()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Shape" {
            let value = Shape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ShapeBase" {
            let value = ShapeBase()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ShapeBevel" {
            let value = ShapeBevel()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ShapeImageExportOptions" {
            let value = ShapeImageExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Shapes" {
            let value = Shapes()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Slide" {
            let value = Slide()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideAnimation" {
            let value = SlideAnimation()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideBackground" {
            let value = SlideBackground()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideComment" {
            let value = SlideComment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideCommentBase" {
            let value = SlideCommentBase()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideComments" {
            let value = SlideComments()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideModernComment" {
            let value = SlideModernComment()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideProperties" {
            let value = SlideProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideReplaceResult" {
            let value = SlideReplaceResult()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SlideShowProperties" {
            let value = SlideShowProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Slides" {
            let value = Slides()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SmartArt" {
            let value = SmartArt()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SmartArtNode" {
            let value = SmartArtNode()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SmartArtShape" {
            let value = SmartArtShape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SoftEdgeEffect" {
            let value = SoftEdgeEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SolidFill" {
            let value = SolidFill()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SplitDocumentResult" {
            let value = SplitDocumentResult()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "StorageExist" {
            let value = StorageExist()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "StorageFile" {
            let value = StorageFile()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SubscriptElement" {
            let value = SubscriptElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SummaryZoomFrame" {
            let value = SummaryZoomFrame()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SummaryZoomSection" {
            let value = SummaryZoomSection()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SuperscriptElement" {
            let value = SuperscriptElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SvgExportOptions" {
            let value = SvgExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "SwfExportOptions" {
            let value = SwfExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Table" {
            let value = Table()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TableCell" {
            let value = TableCell()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TableColumn" {
            let value = TableColumn()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TableRow" {
            let value = TableRow()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Task" {
            let value = Task()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TextBounds" {
            let value = TextBounds()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TextElement" {
            let value = TextElement()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TextFrameFormat" {
            let value = TextFrameFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TextItem" {
            let value = TextItem()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TextItems" {
            let value = TextItems()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Theme" {
            let value = Theme()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ThreeDFormat" {
            let value = ThreeDFormat()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TiffExportOptions" {
            let value = TiffExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "TintEffect" {
            let value = TintEffect()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "UpdateBackground" {
            let value = UpdateBackground()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "UpdateShape" {
            let value = UpdateShape()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "VideoExportOptions" {
            let value = VideoExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "VideoFrame" {
            let value = VideoFrame()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ViewProperties" {
            let value = ViewProperties()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "Workbook" {
            let value = Workbook()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "XYSeries" {
            let value = XYSeries()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "XamlExportOptions" {
            let value = XamlExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "XpsExportOptions" {
            let value = XpsExportOptions()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ZoomFrame" {
            let value = ZoomFrame()
            try? value.fillValues(object)
            return (value, nil)
        } else if className == "ZoomObject" {
            let value = ZoomObject()
            try? value.fillValues(object)
            return (value, nil)
        } else {
            return (nil, ErrorResponse.error(-1, nil, AlamofireDecodableRequestBuilderError.emptyDataResponse))
        }
    }

    static let typeHierarchy : [String:String] = [
        "AccentElement": "MathElement",
        "AddLayoutSlide": "Task",
        "AddMasterSlide": "Task",
        "AddShape": "Task",
        "AddSlide": "Task",
        "AlphaBiLevelEffect": "ImageTransformEffect",
        "AlphaCeilingEffect": "ImageTransformEffect",
        "AlphaFloorEffect": "ImageTransformEffect",
        "AlphaInverseEffect": "ImageTransformEffect",
        "AlphaModulateEffect": "ImageTransformEffect",
        "AlphaModulateFixedEffect": "ImageTransformEffect",
        "AlphaReplaceEffect": "ImageTransformEffect",
        "ArcToPathSegment": "PathSegment",
        "ArrayElement": "MathElement",
        "AudioFrame": "GeometryShape",
        "BarElement": "MathElement",
        "Base64InputFile": "InputFile",
        "BiLevelEffect": "ImageTransformEffect",
        "BlockElement": "MathElement",
        "BlurImageEffect": "ImageTransformEffect",
        "BorderBoxElement": "MathElement",
        "BoxElement": "MathElement",
        "BubbleChartDataPoint": "ScatterChartDataPoint",
        "BubbleSeries": "XYSeries",
        "Chart": "ShapeBase",
        "ClosePathSegment": "PathSegment",
        "ColorChangeEffect": "ImageTransformEffect",
        "ColorReplaceEffect": "ImageTransformEffect",
        "ColorScheme": "ResourceBase",
        "Connector": "GeometryShape",
        "CubicBezierToPathSegment": "PathSegment",
        "DelimiterElement": "MathElement",
        "Document": "ResourceBase",
        "DocumentProperties": "ResourceBase",
        "DocumentProperty": "ResourceBase",
        "DocumentReplaceResult": "Document",
        "DuotoneEffect": "ImageTransformEffect",
        "FileVersion": "StorageFile",
        "FillOverlayImageEffect": "ImageTransformEffect",
        "FontScheme": "ResourceBase",
        "FormatScheme": "ResourceBase",
        "FractionElement": "MathElement",
        "FunctionElement": "MathElement",
        "GeometryShape": "ShapeBase",
        "GifExportOptions": "ImageExportOptionsBase",
        "GradientFill": "FillFormat",
        "GraphicalObject": "ShapeBase",
        "GrayScaleEffect": "ImageTransformEffect",
        "GroupShape": "ShapeBase",
        "GroupingCharacterElement": "MathElement",
        "HeaderFooter": "ResourceBase",
        "HslEffect": "ImageTransformEffect",
        "Html5ExportOptions": "ExportOptions",
        "HtmlExportOptions": "ExportOptions",
        "Image": "ResourceBase",
        "ImageExportOptions": "ImageExportOptionsBase",
        "ImageExportOptionsBase": "ExportOptions",
        "Images": "ResourceBase",
        "LayoutSlide": "ResourceBase",
        "LayoutSlides": "ResourceBase",
        "LeftSubSuperscriptElement": "MathElement",
        "LimitElement": "MathElement",
        "LineToPathSegment": "PathSegment",
        "Literals": "DataSource",
        "LuminanceEffect": "ImageTransformEffect",
        "MasterSlide": "ResourceBase",
        "MasterSlides": "ResourceBase",
        "MatrixElement": "MathElement",
        "Merge": "Task",
        "MoveToPathSegment": "PathSegment",
        "NaryOperatorElement": "MathElement",
        "NoFill": "FillFormat",
        "NotesSlide": "ResourceBase",
        "NotesSlideHeaderFooter": "ResourceBase",
        "OleObjectFrame": "ShapeBase",
        "OneValueChartDataPoint": "DataPoint",
        "OneValueSeries": "Series",
        "Paragraph": "ResourceBase",
        "Paragraphs": "ResourceBase",
        "PathInputFile": "InputFile",
        "PathOutputFile": "OutputFile",
        "PatternFill": "FillFormat",
        "PdfExportOptions": "ExportOptions",
        "PictureFill": "FillFormat",
        "PictureFrame": "GeometryShape",
        "Placeholder": "ResourceBase",
        "Placeholders": "ResourceBase",
        "Portion": "ResourceBase",
        "Portions": "ResourceBase",
        "PptxExportOptions": "ExportOptions",
        "ProtectionProperties": "ResourceBase",
        "QuadraticBezierToPathSegment": "PathSegment",
        "RadicalElement": "MathElement",
        "RemoveShape": "Task",
        "RemoveSlide": "Task",
        "ReorderSlide": "Task",
        "ReplaceText": "Task",
        "RequestInputFile": "InputFile",
        "ResetSlide": "Task",
        "ResponseOutputFile": "OutputFile",
        "RightSubSuperscriptElement": "MathElement",
        "Save": "Task",
        "SaveShape": "Task",
        "SaveSlide": "Task",
        "ScatterChartDataPoint": "DataPoint",
        "ScatterSeries": "XYSeries",
        "Section": "ResourceBase",
        "SectionZoomFrame": "ZoomObject",
        "Sections": "ResourceBase",
        "Shape": "GeometryShape",
        "ShapeBase": "ResourceBase",
        "Shapes": "ResourceBase",
        "Slide": "ResourceBase",
        "SlideAnimation": "ResourceBase",
        "SlideBackground": "ResourceBase",
        "SlideComment": "SlideCommentBase",
        "SlideComments": "ResourceBase",
        "SlideModernComment": "SlideCommentBase",
        "SlideProperties": "ResourceBase",
        "SlideReplaceResult": "Slide",
        "SlideShowProperties": "ResourceBase",
        "Slides": "ResourceBase",
        "SmartArt": "ShapeBase",
        "SmartArtShape": "GeometryShape",
        "SolidFill": "FillFormat",
        "SplitDocumentResult": "ResourceBase",
        "SubscriptElement": "MathElement",
        "SummaryZoomFrame": "ShapeBase",
        "SummaryZoomSection": "SectionZoomFrame",
        "SuperscriptElement": "MathElement",
        "SvgExportOptions": "ExportOptions",
        "SwfExportOptions": "ExportOptions",
        "Table": "ShapeBase",
        "TextElement": "MathElement",
        "TextItems": "ResourceBase",
        "Theme": "ResourceBase",
        "TiffExportOptions": "ImageExportOptionsBase",
        "TintEffect": "ImageTransformEffect",
        "UpdateBackground": "Task",
        "UpdateShape": "Task",
        "VideoExportOptions": "ExportOptions",
        "VideoFrame": "GeometryShape",
        "ViewProperties": "ResourceBase",
        "Workbook": "DataSource",
        "XYSeries": "Series",
        "XamlExportOptions": "ExportOptions",
        "XpsExportOptions": "ExportOptions",
        "ZoomFrame": "ZoomObject",
        "ZoomObject": "ShapeBase",
    ]

    class func getTypeDeterminers(_ className: String) -> [String:String]? {
        if typeDeterminers.isEmpty {
            initTypeDeterminers()
        }
        return typeDeterminers[className]
    }

    static var typeDeterminers : [String:[String:String]] = [ : ]

    class func initTypeDeterminers() {
        typeDeterminers["AccentElement"] = [ : ]
        typeDeterminers["AccentElement"]!["Type"] = "Accent"
        typeDeterminers["AddLayoutSlide"] = [ : ]
        typeDeterminers["AddLayoutSlide"]!["Type"] = "AddLayoutSlide"
        typeDeterminers["AddMasterSlide"] = [ : ]
        typeDeterminers["AddMasterSlide"]!["Type"] = "AddMasterSlide"
        typeDeterminers["AddShape"] = [ : ]
        typeDeterminers["AddShape"]!["Type"] = "AddShape"
        typeDeterminers["AddSlide"] = [ : ]
        typeDeterminers["AddSlide"]!["Type"] = "AddSlide"
        typeDeterminers["AlphaBiLevelEffect"] = [ : ]
        typeDeterminers["AlphaBiLevelEffect"]!["Type"] = "AlphaBiLevel"
        typeDeterminers["AlphaCeilingEffect"] = [ : ]
        typeDeterminers["AlphaCeilingEffect"]!["Type"] = "AlphaCeiling"
        typeDeterminers["AlphaFloorEffect"] = [ : ]
        typeDeterminers["AlphaFloorEffect"]!["Type"] = "AlphaFloor"
        typeDeterminers["AlphaInverseEffect"] = [ : ]
        typeDeterminers["AlphaInverseEffect"]!["Type"] = "AlphaInverse"
        typeDeterminers["AlphaModulateEffect"] = [ : ]
        typeDeterminers["AlphaModulateEffect"]!["Type"] = "AlphaModulate"
        typeDeterminers["AlphaModulateFixedEffect"] = [ : ]
        typeDeterminers["AlphaModulateFixedEffect"]!["Type"] = "AlphaModulateFixed"
        typeDeterminers["AlphaReplaceEffect"] = [ : ]
        typeDeterminers["AlphaReplaceEffect"]!["Type"] = "AlphaReplace"
        typeDeterminers["ArcToPathSegment"] = [ : ]
        typeDeterminers["ArcToPathSegment"]!["Type"] = "ArcTo"
        typeDeterminers["ArrayElement"] = [ : ]
        typeDeterminers["ArrayElement"]!["Type"] = "Array"
        typeDeterminers["AudioFrame"] = [ : ]
        typeDeterminers["AudioFrame"]!["Type"] = "AudioFrame"
        typeDeterminers["BarElement"] = [ : ]
        typeDeterminers["BarElement"]!["Type"] = "Bar"
        typeDeterminers["Base64InputFile"] = [ : ]
        typeDeterminers["Base64InputFile"]!["Type"] = "Base64"
        typeDeterminers["BiLevelEffect"] = [ : ]
        typeDeterminers["BiLevelEffect"]!["Type"] = "BiLevel"
        typeDeterminers["BlockElement"] = [ : ]
        typeDeterminers["BlockElement"]!["Type"] = "Block"
        typeDeterminers["BlurImageEffect"] = [ : ]
        typeDeterminers["BlurImageEffect"]!["Type"] = "Blur"
        typeDeterminers["BorderBoxElement"] = [ : ]
        typeDeterminers["BorderBoxElement"]!["Type"] = "BorderBox"
        typeDeterminers["BoxElement"] = [ : ]
        typeDeterminers["BoxElement"]!["Type"] = "Box"
        typeDeterminers["BubbleChartDataPoint"] = [ : ]
        typeDeterminers["BubbleChartDataPoint"]!["Type"] = "Bubble"
        typeDeterminers["BubbleSeries"] = [ : ]
        typeDeterminers["BubbleSeries"]!["DataPointType"] = "Bubble"
        typeDeterminers["Chart"] = [ : ]
        typeDeterminers["Chart"]!["Type"] = "Chart"
        typeDeterminers["ClosePathSegment"] = [ : ]
        typeDeterminers["ClosePathSegment"]!["Type"] = "Close"
        typeDeterminers["ColorChangeEffect"] = [ : ]
        typeDeterminers["ColorChangeEffect"]!["Type"] = "ColorChange"
        typeDeterminers["ColorReplaceEffect"] = [ : ]
        typeDeterminers["ColorReplaceEffect"]!["Type"] = "ColorReplace"
        typeDeterminers["ColorScheme"] = [ : ]
        typeDeterminers["Connector"] = [ : ]
        typeDeterminers["Connector"]!["Type"] = "Connector"
        typeDeterminers["CubicBezierToPathSegment"] = [ : ]
        typeDeterminers["CubicBezierToPathSegment"]!["Type"] = "CubicBezierTo"
        typeDeterminers["DelimiterElement"] = [ : ]
        typeDeterminers["DelimiterElement"]!["Type"] = "Delimiter"
        typeDeterminers["Document"] = [ : ]
        typeDeterminers["DocumentProperties"] = [ : ]
        typeDeterminers["DocumentProperty"] = [ : ]
        typeDeterminers["DocumentReplaceResult"] = [ : ]
        typeDeterminers["DuotoneEffect"] = [ : ]
        typeDeterminers["DuotoneEffect"]!["Type"] = "Duotone"
        typeDeterminers["FileVersion"] = [ : ]
        typeDeterminers["FillOverlayImageEffect"] = [ : ]
        typeDeterminers["FillOverlayImageEffect"]!["Type"] = "FillOverlay"
        typeDeterminers["FontScheme"] = [ : ]
        typeDeterminers["FormatScheme"] = [ : ]
        typeDeterminers["FractionElement"] = [ : ]
        typeDeterminers["FractionElement"]!["Type"] = "Fraction"
        typeDeterminers["FunctionElement"] = [ : ]
        typeDeterminers["FunctionElement"]!["Type"] = "Function"
        typeDeterminers["GeometryShape"] = [ : ]
        typeDeterminers["GifExportOptions"] = [ : ]
        typeDeterminers["GifExportOptions"]!["Format"] = "gif"
        typeDeterminers["GradientFill"] = [ : ]
        typeDeterminers["GradientFill"]!["Type"] = "Gradient"
        typeDeterminers["GraphicalObject"] = [ : ]
        typeDeterminers["GraphicalObject"]!["Type"] = "GraphicalObject"
        typeDeterminers["GrayScaleEffect"] = [ : ]
        typeDeterminers["GrayScaleEffect"]!["Type"] = "GrayScale"
        typeDeterminers["GroupShape"] = [ : ]
        typeDeterminers["GroupShape"]!["Type"] = "GroupShape"
        typeDeterminers["GroupingCharacterElement"] = [ : ]
        typeDeterminers["GroupingCharacterElement"]!["Type"] = "GroupingCharacter"
        typeDeterminers["HeaderFooter"] = [ : ]
        typeDeterminers["HslEffect"] = [ : ]
        typeDeterminers["HslEffect"]!["Type"] = "Hsl"
        typeDeterminers["Html5ExportOptions"] = [ : ]
        typeDeterminers["Html5ExportOptions"]!["Format"] = "html5"
        typeDeterminers["HtmlExportOptions"] = [ : ]
        typeDeterminers["HtmlExportOptions"]!["Format"] = "html"
        typeDeterminers["Image"] = [ : ]
        typeDeterminers["ImageExportOptions"] = [ : ]
        typeDeterminers["ImageExportOptions"]!["Format"] = "image"
        typeDeterminers["ImageExportOptionsBase"] = [ : ]
        typeDeterminers["Images"] = [ : ]
        typeDeterminers["LayoutSlide"] = [ : ]
        typeDeterminers["LayoutSlides"] = [ : ]
        typeDeterminers["LeftSubSuperscriptElement"] = [ : ]
        typeDeterminers["LeftSubSuperscriptElement"]!["Type"] = "LeftSubSuperscriptElement"
        typeDeterminers["LimitElement"] = [ : ]
        typeDeterminers["LimitElement"]!["Type"] = "Limit"
        typeDeterminers["LineToPathSegment"] = [ : ]
        typeDeterminers["LineToPathSegment"]!["Type"] = "LineTo"
        typeDeterminers["Literals"] = [ : ]
        typeDeterminers["Literals"]!["Type"] = "Literals"
        typeDeterminers["LuminanceEffect"] = [ : ]
        typeDeterminers["LuminanceEffect"]!["Type"] = "Luminance"
        typeDeterminers["MasterSlide"] = [ : ]
        typeDeterminers["MasterSlides"] = [ : ]
        typeDeterminers["MatrixElement"] = [ : ]
        typeDeterminers["MatrixElement"]!["Type"] = "Matrix"
        typeDeterminers["Merge"] = [ : ]
        typeDeterminers["Merge"]!["Type"] = "Merge"
        typeDeterminers["MoveToPathSegment"] = [ : ]
        typeDeterminers["MoveToPathSegment"]!["Type"] = "MoveTo"
        typeDeterminers["NaryOperatorElement"] = [ : ]
        typeDeterminers["NaryOperatorElement"]!["Type"] = "NaryOperator"
        typeDeterminers["NoFill"] = [ : ]
        typeDeterminers["NoFill"]!["Type"] = "NoFill"
        typeDeterminers["NotesSlide"] = [ : ]
        typeDeterminers["NotesSlideHeaderFooter"] = [ : ]
        typeDeterminers["OleObjectFrame"] = [ : ]
        typeDeterminers["OleObjectFrame"]!["Type"] = "OleObjectFrame"
        typeDeterminers["OneValueChartDataPoint"] = [ : ]
        typeDeterminers["OneValueChartDataPoint"]!["Type"] = "OneValue"
        typeDeterminers["OneValueSeries"] = [ : ]
        typeDeterminers["OneValueSeries"]!["DataPointType"] = "OneValue"
        typeDeterminers["Paragraph"] = [ : ]
        typeDeterminers["Paragraphs"] = [ : ]
        typeDeterminers["PathInputFile"] = [ : ]
        typeDeterminers["PathInputFile"]!["Type"] = "Path"
        typeDeterminers["PathOutputFile"] = [ : ]
        typeDeterminers["PathOutputFile"]!["Type"] = "Path"
        typeDeterminers["PatternFill"] = [ : ]
        typeDeterminers["PatternFill"]!["Type"] = "Pattern"
        typeDeterminers["PdfExportOptions"] = [ : ]
        typeDeterminers["PdfExportOptions"]!["Format"] = "pdf"
        typeDeterminers["PictureFill"] = [ : ]
        typeDeterminers["PictureFill"]!["Type"] = "Picture"
        typeDeterminers["PictureFrame"] = [ : ]
        typeDeterminers["PictureFrame"]!["Type"] = "PictureFrame"
        typeDeterminers["Placeholder"] = [ : ]
        typeDeterminers["Placeholders"] = [ : ]
        typeDeterminers["Portion"] = [ : ]
        typeDeterminers["Portions"] = [ : ]
        typeDeterminers["PptxExportOptions"] = [ : ]
        typeDeterminers["PptxExportOptions"]!["Format"] = "pptx"
        typeDeterminers["ProtectionProperties"] = [ : ]
        typeDeterminers["QuadraticBezierToPathSegment"] = [ : ]
        typeDeterminers["QuadraticBezierToPathSegment"]!["Type"] = "QuadBezierTo"
        typeDeterminers["RadicalElement"] = [ : ]
        typeDeterminers["RadicalElement"]!["Type"] = "Radical"
        typeDeterminers["RemoveShape"] = [ : ]
        typeDeterminers["RemoveShape"]!["Type"] = "RemoveShape"
        typeDeterminers["RemoveSlide"] = [ : ]
        typeDeterminers["RemoveSlide"]!["Type"] = "RemoveSlide"
        typeDeterminers["ReorderSlide"] = [ : ]
        typeDeterminers["ReorderSlide"]!["Type"] = "ReoderSlide"
        typeDeterminers["ReplaceText"] = [ : ]
        typeDeterminers["ReplaceText"]!["Type"] = "ReplaceText"
        typeDeterminers["RequestInputFile"] = [ : ]
        typeDeterminers["RequestInputFile"]!["Type"] = "Request"
        typeDeterminers["ResetSlide"] = [ : ]
        typeDeterminers["ResetSlide"]!["Type"] = "ResetSlide"
        typeDeterminers["ResponseOutputFile"] = [ : ]
        typeDeterminers["ResponseOutputFile"]!["Type"] = "Response"
        typeDeterminers["RightSubSuperscriptElement"] = [ : ]
        typeDeterminers["RightSubSuperscriptElement"]!["Type"] = "RightSubSuperscriptElement"
        typeDeterminers["Save"] = [ : ]
        typeDeterminers["Save"]!["Type"] = "Save"
        typeDeterminers["SaveShape"] = [ : ]
        typeDeterminers["SaveShape"]!["Type"] = "SaveShape"
        typeDeterminers["SaveSlide"] = [ : ]
        typeDeterminers["SaveSlide"]!["Type"] = "SaveSlide"
        typeDeterminers["ScatterChartDataPoint"] = [ : ]
        typeDeterminers["ScatterChartDataPoint"]!["Type"] = "Scatter"
        typeDeterminers["ScatterSeries"] = [ : ]
        typeDeterminers["ScatterSeries"]!["DataPointType"] = "Scatter"
        typeDeterminers["Section"] = [ : ]
        typeDeterminers["SectionZoomFrame"] = [ : ]
        typeDeterminers["SectionZoomFrame"]!["Type"] = "SectionZoomFrame"
        typeDeterminers["Sections"] = [ : ]
        typeDeterminers["Shape"] = [ : ]
        typeDeterminers["Shape"]!["Type"] = "Shape"
        typeDeterminers["ShapeBase"] = [ : ]
        typeDeterminers["Shapes"] = [ : ]
        typeDeterminers["Slide"] = [ : ]
        typeDeterminers["SlideAnimation"] = [ : ]
        typeDeterminers["SlideBackground"] = [ : ]
        typeDeterminers["SlideComment"] = [ : ]
        typeDeterminers["SlideComment"]!["Type"] = "Regular"
        typeDeterminers["SlideComments"] = [ : ]
        typeDeterminers["SlideModernComment"] = [ : ]
        typeDeterminers["SlideModernComment"]!["Type"] = "Modern"
        typeDeterminers["SlideProperties"] = [ : ]
        typeDeterminers["SlideReplaceResult"] = [ : ]
        typeDeterminers["SlideShowProperties"] = [ : ]
        typeDeterminers["Slides"] = [ : ]
        typeDeterminers["SmartArt"] = [ : ]
        typeDeterminers["SmartArt"]!["Type"] = "SmartArt"
        typeDeterminers["SmartArtShape"] = [ : ]
        typeDeterminers["SmartArtShape"]!["Type"] = "SmartArtShape"
        typeDeterminers["SolidFill"] = [ : ]
        typeDeterminers["SolidFill"]!["Type"] = "Solid"
        typeDeterminers["SplitDocumentResult"] = [ : ]
        typeDeterminers["SubscriptElement"] = [ : ]
        typeDeterminers["SubscriptElement"]!["Type"] = "SubscriptElement"
        typeDeterminers["SummaryZoomFrame"] = [ : ]
        typeDeterminers["SummaryZoomFrame"]!["Type"] = "SummaryZoomFrame"
        typeDeterminers["SummaryZoomSection"] = [ : ]
        typeDeterminers["SummaryZoomSection"]!["Type"] = "SummaryZoomSection"
        typeDeterminers["SuperscriptElement"] = [ : ]
        typeDeterminers["SuperscriptElement"]!["Type"] = "SuperscriptElement"
        typeDeterminers["SvgExportOptions"] = [ : ]
        typeDeterminers["SvgExportOptions"]!["Format"] = "svg"
        typeDeterminers["SwfExportOptions"] = [ : ]
        typeDeterminers["SwfExportOptions"]!["Format"] = "swf"
        typeDeterminers["Table"] = [ : ]
        typeDeterminers["Table"]!["Type"] = "Table"
        typeDeterminers["TextElement"] = [ : ]
        typeDeterminers["TextElement"]!["Type"] = "Text"
        typeDeterminers["TextItems"] = [ : ]
        typeDeterminers["Theme"] = [ : ]
        typeDeterminers["TiffExportOptions"] = [ : ]
        typeDeterminers["TiffExportOptions"]!["Format"] = "tiff"
        typeDeterminers["TintEffect"] = [ : ]
        typeDeterminers["TintEffect"]!["Type"] = "Tint"
        typeDeterminers["UpdateBackground"] = [ : ]
        typeDeterminers["UpdateBackground"]!["Type"] = "UpdateBackground"
        typeDeterminers["UpdateShape"] = [ : ]
        typeDeterminers["UpdateShape"]!["Type"] = "UpdateShape"
        typeDeterminers["VideoExportOptions"] = [ : ]
        typeDeterminers["VideoExportOptions"]!["Format"] = "mpeg4"
        typeDeterminers["VideoFrame"] = [ : ]
        typeDeterminers["VideoFrame"]!["Type"] = "VideoFrame"
        typeDeterminers["ViewProperties"] = [ : ]
        typeDeterminers["Workbook"] = [ : ]
        typeDeterminers["Workbook"]!["Type"] = "Workbook"
        typeDeterminers["XYSeries"] = [ : ]
        typeDeterminers["XamlExportOptions"] = [ : ]
        typeDeterminers["XamlExportOptions"]!["Format"] = "xaml"
        typeDeterminers["XpsExportOptions"] = [ : ]
        typeDeterminers["XpsExportOptions"]!["Format"] = "xps"
        typeDeterminers["ZoomFrame"] = [ : ]
        typeDeterminers["ZoomFrame"]!["Type"] = "ZoomFrame"
        typeDeterminers["ZoomObject"] = [ : ]
    }
}
