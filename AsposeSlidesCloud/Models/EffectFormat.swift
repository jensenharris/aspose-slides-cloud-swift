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


/** Effect format */
public class EffectFormat: Codable {

    /** blur effect */
    public var blur: BlurEffect?
    /** glow effect */
    public var glow: GlowEffect?
    /** inner shadow effect */
    public var innerShadow: InnerShadowEffect?
    /** outer shadow effect */
    public var outerShadow: OuterShadowEffect?
    /** preset shadow effect */
    public var presetShadow: PresetShadowEffect?
    /** soft edge effect */
    public var softEdge: SoftEdgeEffect?
    /** reflection effect */
    public var reflection: ReflectionEffect?
    /** fill overlay effect */
    public var fillOverlay: FillOverlayEffect?

    func fillValues(_ source: [String:Any]) throws {
        let blurValue = source["blur"] ?? source["Blur"]
        if blurValue != nil {
            let blurDictionaryValue = blurValue! as? [String:Any]
            if blurDictionaryValue != nil {
                let (blurInstance, error) = ClassRegistry.getClassFromDictionary(BlurEffect.self, blurDictionaryValue!)
                if error == nil && blurInstance != nil {
                    self.blur = blurInstance! as? BlurEffect
                }
            }
        }
        let glowValue = source["glow"] ?? source["Glow"]
        if glowValue != nil {
            let glowDictionaryValue = glowValue! as? [String:Any]
            if glowDictionaryValue != nil {
                let (glowInstance, error) = ClassRegistry.getClassFromDictionary(GlowEffect.self, glowDictionaryValue!)
                if error == nil && glowInstance != nil {
                    self.glow = glowInstance! as? GlowEffect
                }
            }
        }
        let innerShadowValue = source["innerShadow"] ?? source["InnerShadow"]
        if innerShadowValue != nil {
            let innerShadowDictionaryValue = innerShadowValue! as? [String:Any]
            if innerShadowDictionaryValue != nil {
                let (innerShadowInstance, error) = ClassRegistry.getClassFromDictionary(InnerShadowEffect.self, innerShadowDictionaryValue!)
                if error == nil && innerShadowInstance != nil {
                    self.innerShadow = innerShadowInstance! as? InnerShadowEffect
                }
            }
        }
        let outerShadowValue = source["outerShadow"] ?? source["OuterShadow"]
        if outerShadowValue != nil {
            let outerShadowDictionaryValue = outerShadowValue! as? [String:Any]
            if outerShadowDictionaryValue != nil {
                let (outerShadowInstance, error) = ClassRegistry.getClassFromDictionary(OuterShadowEffect.self, outerShadowDictionaryValue!)
                if error == nil && outerShadowInstance != nil {
                    self.outerShadow = outerShadowInstance! as? OuterShadowEffect
                }
            }
        }
        let presetShadowValue = source["presetShadow"] ?? source["PresetShadow"]
        if presetShadowValue != nil {
            let presetShadowDictionaryValue = presetShadowValue! as? [String:Any]
            if presetShadowDictionaryValue != nil {
                let (presetShadowInstance, error) = ClassRegistry.getClassFromDictionary(PresetShadowEffect.self, presetShadowDictionaryValue!)
                if error == nil && presetShadowInstance != nil {
                    self.presetShadow = presetShadowInstance! as? PresetShadowEffect
                }
            }
        }
        let softEdgeValue = source["softEdge"] ?? source["SoftEdge"]
        if softEdgeValue != nil {
            let softEdgeDictionaryValue = softEdgeValue! as? [String:Any]
            if softEdgeDictionaryValue != nil {
                let (softEdgeInstance, error) = ClassRegistry.getClassFromDictionary(SoftEdgeEffect.self, softEdgeDictionaryValue!)
                if error == nil && softEdgeInstance != nil {
                    self.softEdge = softEdgeInstance! as? SoftEdgeEffect
                }
            }
        }
        let reflectionValue = source["reflection"] ?? source["Reflection"]
        if reflectionValue != nil {
            let reflectionDictionaryValue = reflectionValue! as? [String:Any]
            if reflectionDictionaryValue != nil {
                let (reflectionInstance, error) = ClassRegistry.getClassFromDictionary(ReflectionEffect.self, reflectionDictionaryValue!)
                if error == nil && reflectionInstance != nil {
                    self.reflection = reflectionInstance! as? ReflectionEffect
                }
            }
        }
        let fillOverlayValue = source["fillOverlay"] ?? source["FillOverlay"]
        if fillOverlayValue != nil {
            let fillOverlayDictionaryValue = fillOverlayValue! as? [String:Any]
            if fillOverlayDictionaryValue != nil {
                let (fillOverlayInstance, error) = ClassRegistry.getClassFromDictionary(FillOverlayEffect.self, fillOverlayDictionaryValue!)
                if error == nil && fillOverlayInstance != nil {
                    self.fillOverlay = fillOverlayInstance! as? FillOverlayEffect
                }
            }
        }
    }

    public init(blur: BlurEffect? = nil, glow: GlowEffect? = nil, innerShadow: InnerShadowEffect? = nil, outerShadow: OuterShadowEffect? = nil, presetShadow: PresetShadowEffect? = nil, softEdge: SoftEdgeEffect? = nil, reflection: ReflectionEffect? = nil, fillOverlay: FillOverlayEffect? = nil) {
        self.blur = blur
        self.glow = glow
        self.innerShadow = innerShadow
        self.outerShadow = outerShadow
        self.presetShadow = presetShadow
        self.softEdge = softEdge
        self.reflection = reflection
        self.fillOverlay = fillOverlay
    }

    private enum CodingKeys: String, CodingKey {
        case blur
        case glow
        case innerShadow
        case outerShadow
        case presetShadow
        case softEdge
        case reflection
        case fillOverlay
    }

}

