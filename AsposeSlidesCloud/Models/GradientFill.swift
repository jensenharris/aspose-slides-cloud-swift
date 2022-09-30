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


/** Represents gradient fill format */
public class GradientFill: FillFormat {

    public enum Direction: String, Codable { 
        case fromCorner1 = "FromCorner1"
        case fromCorner2 = "FromCorner2"
        case fromCorner3 = "FromCorner3"
        case fromCorner4 = "FromCorner4"
        case fromCenter = "FromCenter"
        case notDefined = "NotDefined"
    }
    public enum Shape: String, Codable { 
        case linear = "Linear"
        case rectangle = "Rectangle"
        case radial = "Radial"
        case path = "Path"
        case notDefined = "NotDefined"
    }
    public enum TileFlip: String, Codable { 
        case noFlip = "NoFlip"
        case flipX = "FlipX"
        case flipY = "FlipY"
        case flipBoth = "FlipBoth"
        case notDefined = "NotDefined"
    }
    /** Gradient style. */
    public var direction: Direction?
    /** Gradient shape. */
    public var shape: Shape?
    /** Gradient stops. */
    public var stops: [GradientFillStop]?
    /** Gradient angle. */
    public var linearAngle: Double?
    /** True if the gradient is scaled. */
    public var isScaled: Bool?
    /** Gradient flipping mode. */
    public var tileFlip: TileFlip?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let directionValue = source["direction"] ?? source["Direction"]
        if directionValue != nil {
            let directionStringValue = directionValue! as? String
            if directionStringValue != nil {
                let directionEnumValue = Direction(rawValue: directionStringValue!)
                if directionEnumValue != nil {
                    self.direction = directionEnumValue!
                }
            }
        }
        let shapeValue = source["shape"] ?? source["Shape"]
        if shapeValue != nil {
            let shapeStringValue = shapeValue! as? String
            if shapeStringValue != nil {
                let shapeEnumValue = Shape(rawValue: shapeStringValue!)
                if shapeEnumValue != nil {
                    self.shape = shapeEnumValue!
                }
            }
        }
        let stopsValue = source["stops"] ?? source["Stops"]
        if stopsValue != nil {
            var stopsArray: [GradientFillStop] = []
            let stopsDictionaryValue = stopsValue! as? [Any]
            if stopsDictionaryValue != nil {
                stopsDictionaryValue!.forEach { stopsAnyItem in
                    let stopsItem = stopsAnyItem as? [String:Any]
                    var added = false
                    if stopsItem != nil {
                        let (stopsInstance, error) = ClassRegistry.getClassFromDictionary(GradientFillStop.self, stopsItem!)
                        if error == nil && stopsInstance != nil {
                            let stopsArrayItem = stopsInstance! as? GradientFillStop
                            if stopsArrayItem != nil {
                                stopsArray.append(stopsArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        stopsArray.append(GradientFillStop())
                    }
                }
            }
            self.stops = stopsArray
        }
        let linearAngleValue = source["linearAngle"] ?? source["LinearAngle"]
        if linearAngleValue != nil {
            self.linearAngle = linearAngleValue! as? Double
        }
        let isScaledValue = source["isScaled"] ?? source["IsScaled"]
        if isScaledValue != nil {
            self.isScaled = isScaledValue! as? Bool
        }
        let tileFlipValue = source["tileFlip"] ?? source["TileFlip"]
        if tileFlipValue != nil {
            let tileFlipStringValue = tileFlipValue! as? String
            if tileFlipStringValue != nil {
                let tileFlipEnumValue = TileFlip(rawValue: tileFlipStringValue!)
                if tileFlipEnumValue != nil {
                    self.tileFlip = tileFlipEnumValue!
                }
            }
        }
    }

    public init(type: ModelType? = nil, direction: Direction? = nil, shape: Shape? = nil, stops: [GradientFillStop]? = nil, linearAngle: Double? = nil, isScaled: Bool? = nil, tileFlip: TileFlip? = nil) {
        super.init(type: type)
        self.direction = direction
        self.shape = shape
        self.stops = stops
        self.linearAngle = linearAngle
        self.isScaled = isScaled
        self.tileFlip = tileFlip
        self.type = ModelType.gradient
    }

    private enum CodingKeys: String, CodingKey {
        case direction
        case shape
        case stops
        case linearAngle
        case isScaled
        case tileFlip
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        direction = try? values.decode(Direction.self, forKey: .direction)
        shape = try? values.decode(Shape.self, forKey: .shape)
        stops = try? values.decode([GradientFillStop].self, forKey: .stops)
        linearAngle = try? values.decode(Double.self, forKey: .linearAngle)
        isScaled = try? values.decode(Bool.self, forKey: .isScaled)
        tileFlip = try? values.decode(TileFlip.self, forKey: .tileFlip)
        self.type = ModelType.gradient
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (direction != nil) {
            try? container.encode(direction, forKey: .direction)
        }
        if (shape != nil) {
            try? container.encode(shape, forKey: .shape)
        }
        if (stops != nil) {
            try? container.encode(stops, forKey: .stops)
        }
        if (linearAngle != nil) {
            try? container.encode(linearAngle, forKey: .linearAngle)
        }
        if (isScaled != nil) {
            try? container.encode(isScaled, forKey: .isScaled)
        }
        if (tileFlip != nil) {
            try? container.encode(tileFlip, forKey: .tileFlip)
        }
    }

}

