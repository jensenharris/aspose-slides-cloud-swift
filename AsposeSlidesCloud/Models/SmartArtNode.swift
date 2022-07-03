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


/** Smart art node. */
public class SmartArtNode: Codable {

    public enum OrgChartLayout: String, Codable { 
        case initial = "Initial"
        case standart = "Standart"
        case bothHanging = "BothHanging"
        case leftHanging = "LeftHanging"
        case rightHanging = "RightHanging"
    }
    /** Node list. */
    public var nodes: [SmartArtNode]?
    /** Gets or sets the link to shapes. */
    public var shapes: ResourceUri?
    /** True for and assistant node. */
    public var isAssistant: Bool?
    /** Node text. */
    public var text: String?
    /** Organization chart layout type associated with current node. */
    public var orgChartLayout: OrgChartLayout?
    /** Get or sets list to paragraphs list */
    public var paragraphs: ResourceUri?

    func fillValues(_ source: [String:Any]) throws {
        let nodesValue = source["nodes"]
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
        let shapesValue = source["shapes"]
        if shapesValue != nil {
            let shapesDictionaryValue = shapesValue! as? [String:Any]
            if shapesDictionaryValue != nil {
                let (shapesInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, shapesDictionaryValue!)
                if error == nil && shapesInstance != nil {
                    self.shapes = shapesInstance! as? ResourceUri
                }
            }
        }
        let isAssistantValue = source["isAssistant"]
        if isAssistantValue != nil {
            self.isAssistant = isAssistantValue! as? Bool
        }
        let textValue = source["text"]
        if textValue != nil {
            self.text = textValue! as? String
        }
        let orgChartLayoutValue = source["orgChartLayout"]
        if orgChartLayoutValue != nil {
            let orgChartLayoutStringValue = orgChartLayoutValue! as? String
            if orgChartLayoutStringValue != nil {
                let orgChartLayoutEnumValue = OrgChartLayout(rawValue: orgChartLayoutStringValue!)
                if orgChartLayoutEnumValue != nil {
                    self.orgChartLayout = orgChartLayoutEnumValue!
                }
            }
        }
        let paragraphsValue = source["paragraphs"]
        if paragraphsValue != nil {
            let paragraphsDictionaryValue = paragraphsValue! as? [String:Any]
            if paragraphsDictionaryValue != nil {
                let (paragraphsInstance, error) = ClassRegistry.getClassFromDictionary(ResourceUri.self, paragraphsDictionaryValue!)
                if error == nil && paragraphsInstance != nil {
                    self.paragraphs = paragraphsInstance! as? ResourceUri
                }
            }
        }
    }

    public init(nodes: [SmartArtNode]? = nil, shapes: ResourceUri? = nil, isAssistant: Bool? = nil, text: String? = nil, orgChartLayout: OrgChartLayout? = nil, paragraphs: ResourceUri? = nil) {
        self.nodes = nodes
        self.shapes = shapes
        self.isAssistant = isAssistant
        self.text = text
        self.orgChartLayout = orgChartLayout
        self.paragraphs = paragraphs
    }

    private enum CodingKeys: String, CodingKey {
        case nodes
        case shapes
        case isAssistant
        case text
        case orgChartLayout
        case paragraphs
    }

}

