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


/** Slides document properties. */
public class ViewProperties: ResourceBase {

    public enum LastView: String, Codable { 
        case notDefined = "NotDefined"
        case slideView = "SlideView"
        case slideMasterView = "SlideMasterView"
        case notesView = "NotesView"
        case handoutView = "HandoutView"
        case notesMasterView = "NotesMasterView"
        case outlineView = "OutlineView"
        case slideSorterView = "SlideSorterView"
        case slideThumbnailView = "SlideThumbnailView"
    }
    public enum HorizontalBarState: String, Codable { 
        case minimized = "Minimized"
        case restored = "Restored"
        case maximized = "Maximized"
    }
    public enum VerticalBarState: String, Codable { 
        case minimized = "Minimized"
        case restored = "Restored"
        case maximized = "Maximized"
    }
    public enum ShowComments: String, Codable { 
        case _false = "False"
        case _true = "True"
        case notDefined = "NotDefined"
    }
    /** Last used view mode. */
    public var lastView: LastView?
    /** Horizontal bar state. */
    public var horizontalBarState: HorizontalBarState?
    /** Vertical bar state. */
    public var verticalBarState: VerticalBarState?
    /** True to prefer single view. */
    public var preferSingleView: Bool?
    /** The sizing of the side content region of the normal view, when the region is of a variable restored size. */
    public var restoredLeft: NormalViewRestoredProperties?
    /** The sizing of the top slide region of the normal view, when the region is of a variable restored size. */
    public var restoredTop: NormalViewRestoredProperties?
    /** Slide view mode properties. */
    public var slideViewProperties: CommonSlideViewProperties?
    /** Notes view mode properties. */
    public var notesViewProperties: CommonSlideViewProperties?
    /** True if the comments should be shown. */
    public var showComments: ShowComments?

    override func fillValues(_ source: [String:Any]) throws {
        try super.fillValues(source)
        let lastViewValue = source["lastView"]
        if lastViewValue != nil {
            let lastViewStringValue = lastViewValue! as? String
            if lastViewStringValue != nil {
                let lastViewEnumValue = LastView(rawValue: lastViewStringValue!)
                if lastViewEnumValue != nil {
                    self.lastView = lastViewEnumValue!
                }
            }
        }
        let horizontalBarStateValue = source["horizontalBarState"]
        if horizontalBarStateValue != nil {
            let horizontalBarStateStringValue = horizontalBarStateValue! as? String
            if horizontalBarStateStringValue != nil {
                let horizontalBarStateEnumValue = HorizontalBarState(rawValue: horizontalBarStateStringValue!)
                if horizontalBarStateEnumValue != nil {
                    self.horizontalBarState = horizontalBarStateEnumValue!
                }
            }
        }
        let verticalBarStateValue = source["verticalBarState"]
        if verticalBarStateValue != nil {
            let verticalBarStateStringValue = verticalBarStateValue! as? String
            if verticalBarStateStringValue != nil {
                let verticalBarStateEnumValue = VerticalBarState(rawValue: verticalBarStateStringValue!)
                if verticalBarStateEnumValue != nil {
                    self.verticalBarState = verticalBarStateEnumValue!
                }
            }
        }
        let preferSingleViewValue = source["preferSingleView"]
        if preferSingleViewValue != nil {
            self.preferSingleView = preferSingleViewValue! as? Bool
        }
        let restoredLeftValue = source["restoredLeft"]
        if restoredLeftValue != nil {
            let restoredLeftDictionaryValue = restoredLeftValue! as? [String:Any]
            if restoredLeftDictionaryValue != nil {
                let (restoredLeftInstance, error) = ClassRegistry.getClassFromDictionary(NormalViewRestoredProperties.self, restoredLeftDictionaryValue!)
                if error == nil && restoredLeftInstance != nil {
                    self.restoredLeft = restoredLeftInstance! as? NormalViewRestoredProperties
                }
            }
        }
        let restoredTopValue = source["restoredTop"]
        if restoredTopValue != nil {
            let restoredTopDictionaryValue = restoredTopValue! as? [String:Any]
            if restoredTopDictionaryValue != nil {
                let (restoredTopInstance, error) = ClassRegistry.getClassFromDictionary(NormalViewRestoredProperties.self, restoredTopDictionaryValue!)
                if error == nil && restoredTopInstance != nil {
                    self.restoredTop = restoredTopInstance! as? NormalViewRestoredProperties
                }
            }
        }
        let slideViewPropertiesValue = source["slideViewProperties"]
        if slideViewPropertiesValue != nil {
            let slideViewPropertiesDictionaryValue = slideViewPropertiesValue! as? [String:Any]
            if slideViewPropertiesDictionaryValue != nil {
                let (slideViewPropertiesInstance, error) = ClassRegistry.getClassFromDictionary(CommonSlideViewProperties.self, slideViewPropertiesDictionaryValue!)
                if error == nil && slideViewPropertiesInstance != nil {
                    self.slideViewProperties = slideViewPropertiesInstance! as? CommonSlideViewProperties
                }
            }
        }
        let notesViewPropertiesValue = source["notesViewProperties"]
        if notesViewPropertiesValue != nil {
            let notesViewPropertiesDictionaryValue = notesViewPropertiesValue! as? [String:Any]
            if notesViewPropertiesDictionaryValue != nil {
                let (notesViewPropertiesInstance, error) = ClassRegistry.getClassFromDictionary(CommonSlideViewProperties.self, notesViewPropertiesDictionaryValue!)
                if error == nil && notesViewPropertiesInstance != nil {
                    self.notesViewProperties = notesViewPropertiesInstance! as? CommonSlideViewProperties
                }
            }
        }
        let showCommentsValue = source["showComments"]
        if showCommentsValue != nil {
            let showCommentsStringValue = showCommentsValue! as? String
            if showCommentsStringValue != nil {
                let showCommentsEnumValue = ShowComments(rawValue: showCommentsStringValue!)
                if showCommentsEnumValue != nil {
                    self.showComments = showCommentsEnumValue!
                }
            }
        }
    }

    public init(selfUri: ResourceUri? = nil, alternateLinks: [ResourceUri]? = nil, lastView: LastView? = nil, horizontalBarState: HorizontalBarState? = nil, verticalBarState: VerticalBarState? = nil, preferSingleView: Bool? = nil, restoredLeft: NormalViewRestoredProperties? = nil, restoredTop: NormalViewRestoredProperties? = nil, slideViewProperties: CommonSlideViewProperties? = nil, notesViewProperties: CommonSlideViewProperties? = nil, showComments: ShowComments? = nil) {
        super.init(selfUri: selfUri, alternateLinks: alternateLinks)
        self.lastView = lastView
        self.horizontalBarState = horizontalBarState
        self.verticalBarState = verticalBarState
        self.preferSingleView = preferSingleView
        self.restoredLeft = restoredLeft
        self.restoredTop = restoredTop
        self.slideViewProperties = slideViewProperties
        self.notesViewProperties = notesViewProperties
        self.showComments = showComments
    }

    private enum CodingKeys: String, CodingKey {
        case lastView
        case horizontalBarState
        case verticalBarState
        case preferSingleView
        case restoredLeft
        case restoredTop
        case slideViewProperties
        case notesViewProperties
        case showComments
    }

    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let values = try decoder.container(keyedBy: CodingKeys.self)
        lastView = try? values.decode(LastView.self, forKey: .lastView)
        horizontalBarState = try? values.decode(HorizontalBarState.self, forKey: .horizontalBarState)
        verticalBarState = try? values.decode(VerticalBarState.self, forKey: .verticalBarState)
        preferSingleView = try? values.decode(Bool.self, forKey: .preferSingleView)
        restoredLeft = try? values.decode(NormalViewRestoredProperties.self, forKey: .restoredLeft)
        restoredTop = try? values.decode(NormalViewRestoredProperties.self, forKey: .restoredTop)
        slideViewProperties = try? values.decode(CommonSlideViewProperties.self, forKey: .slideViewProperties)
        notesViewProperties = try? values.decode(CommonSlideViewProperties.self, forKey: .notesViewProperties)
        showComments = try? values.decode(ShowComments.self, forKey: .showComments)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if (lastView != nil) {
            try? container.encode(lastView, forKey: .lastView)
        }
        if (horizontalBarState != nil) {
            try? container.encode(horizontalBarState, forKey: .horizontalBarState)
        }
        if (verticalBarState != nil) {
            try? container.encode(verticalBarState, forKey: .verticalBarState)
        }
        if (preferSingleView != nil) {
            try? container.encode(preferSingleView, forKey: .preferSingleView)
        }
        if (restoredLeft != nil) {
            try? container.encode(restoredLeft, forKey: .restoredLeft)
        }
        if (restoredTop != nil) {
            try? container.encode(restoredTop, forKey: .restoredTop)
        }
        if (slideViewProperties != nil) {
            try? container.encode(slideViewProperties, forKey: .slideViewProperties)
        }
        if (notesViewProperties != nil) {
            try? container.encode(notesViewProperties, forKey: .notesViewProperties)
        }
        if (showComments != nil) {
            try? container.encode(showComments, forKey: .showComments)
        }
    }

}

