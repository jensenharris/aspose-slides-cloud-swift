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


public struct CopyFileRequest: Codable {

    /** Copy file */
    public var srcPath: String

    /** Copy file */
    public var destPath: String

    /** Copy file */
    public var srcStorageName: String

    /** Copy file */
    public var destStorageName: String

    /** Copy file */
    public var versionId: String

    public init(srcPath: String, destPath: String, srcStorageName: String = "", destStorageName: String = "", versionId: String = "") {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
        self.versionId = versionId
    }
}

public struct CopyFolderRequest: Codable {

    /** Copy folder */
    public var srcPath: String

    /** Copy folder */
    public var destPath: String

    /** Copy folder */
    public var srcStorageName: String

    /** Copy folder */
    public var destStorageName: String

    public init(srcPath: String, destPath: String, srcStorageName: String = "", destStorageName: String = "") {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
    }
}

public struct CreateFolderRequest: Codable {

    /** Create the folder */
    public var path: String

    /** Create the folder */
    public var storageName: String

    public init(path: String, storageName: String = "") {
        self.path = path
        self.storageName = storageName
    }
}

public struct DeleteChartCategoryRequest: Codable {

    /** Delete a category from a chart. */
    public var name: String

    /** Delete a category from a chart. */
    public var slideIndex: Int

    /** Delete a category from a chart. */
    public var shapeIndex: Int

    /** Delete a category from a chart. */
    public var categoryIndex: Int

    /** Delete a category from a chart. */
    public var password: String

    /** Delete a category from a chart. */
    public var folder: String

    /** Delete a category from a chart. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, categoryIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.categoryIndex = categoryIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteChartDataPointRequest: Codable {

    /** Delete a data point from a chart series. */
    public var name: String

    /** Delete a data point from a chart series. */
    public var slideIndex: Int

    /** Delete a data point from a chart series. */
    public var shapeIndex: Int

    /** Delete a data point from a chart series. */
    public var seriesIndex: Int

    /** Delete a data point from a chart series. */
    public var pointIndex: Int

    /** Delete a data point from a chart series. */
    public var password: String

    /** Delete a data point from a chart series. */
    public var folder: String

    /** Delete a data point from a chart series. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, seriesIndex: Int, pointIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.seriesIndex = seriesIndex
        self.pointIndex = pointIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteChartSeriesRequest: Codable {

    /** Delete a series from a chart. */
    public var name: String

    /** Delete a series from a chart. */
    public var slideIndex: Int

    /** Delete a series from a chart. */
    public var shapeIndex: Int

    /** Delete a series from a chart. */
    public var seriesIndex: Int

    /** Delete a series from a chart. */
    public var password: String

    /** Delete a series from a chart. */
    public var folder: String

    /** Delete a series from a chart. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, seriesIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.seriesIndex = seriesIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteFileRequest: Codable {

    /** Delete file */
    public var path: String

    /** Delete file */
    public var storageName: String

    /** Delete file */
    public var versionId: String

    public init(path: String, storageName: String = "", versionId: String = "") {
        self.path = path
        self.storageName = storageName
        self.versionId = versionId
    }
}

public struct DeleteFolderRequest: Codable {

    /** Delete folder */
    public var path: String

    /** Delete folder */
    public var storageName: String

    /** Delete folder */
    public var recursive: Bool?

    public init(path: String, storageName: String = "", recursive: Bool? = nil) {
        self.path = path
        self.storageName = storageName
        self.recursive = recursive
    }
}

public struct DeleteNotesSlideRequest: Codable {

    /** Remove notes slide. */
    public var name: String

    /** Remove notes slide. */
    public var slideIndex: Int

    /** Remove notes slide. */
    public var password: String

    /** Remove notes slide. */
    public var folder: String

    /** Remove notes slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteNotesSlideParagraphRequest: Codable {

    /** Remove a paragraph. */
    public var name: String

    /** Remove a paragraph. */
    public var slideIndex: Int

    /** Remove a paragraph. */
    public var shapeIndex: Int

    /** Remove a paragraph. */
    public var paragraphIndex: Int

    /** Remove a paragraph. */
    public var password: String

    /** Remove a paragraph. */
    public var folder: String

    /** Remove a paragraph. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteNotesSlideParagraphsRequest: Codable {

    /** Remove a range of paragraphs. */
    public var name: String

    /** Remove a range of paragraphs. */
    public var slideIndex: Int

    /** Remove a range of paragraphs. */
    public var shapeIndex: Int

    /** Remove a range of paragraphs. */
    public var paragraphs: [Int]

    /** Remove a range of paragraphs. */
    public var password: String

    /** Remove a range of paragraphs. */
    public var folder: String

    /** Remove a range of paragraphs. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphs: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphs = paragraphs
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteNotesSlidePortionRequest: Codable {

    /** Remove a portion. */
    public var name: String

    /** Remove a portion. */
    public var slideIndex: Int

    /** Remove a portion. */
    public var shapeIndex: Int

    /** Remove a portion. */
    public var paragraphIndex: Int

    /** Remove a portion. */
    public var portionIndex: Int

    /** Remove a portion. */
    public var password: String

    /** Remove a portion. */
    public var folder: String

    /** Remove a portion. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteNotesSlidePortionsRequest: Codable {

    /** Remove a range of portions. */
    public var name: String

    /** Remove a range of portions. */
    public var slideIndex: Int

    /** Remove a range of portions. */
    public var shapeIndex: Int

    /** Remove a range of portions. */
    public var paragraphIndex: Int

    /** Remove a range of portions. */
    public var portions: [Int]

    /** Remove a range of portions. */
    public var password: String

    /** Remove a range of portions. */
    public var folder: String

    /** Remove a range of portions. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portions: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portions = portions
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteNotesSlideShapeRequest: Codable {

    /** Remove a shape. */
    public var name: String

    /** Remove a shape. */
    public var slideIndex: Int

    /** Remove a shape. */
    public var shapeIndex: Int

    /** Remove a shape. */
    public var password: String

    /** Remove a shape. */
    public var folder: String

    /** Remove a shape. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteNotesSlideShapesRequest: Codable {

    /** Remove a range of shapes. */
    public var name: String

    /** Remove a range of shapes. */
    public var slideIndex: Int

    /** Remove a range of shapes. */
    public var shapes: [Int]

    /** Remove a range of shapes. */
    public var password: String

    /** Remove a range of shapes. */
    public var folder: String

    /** Remove a range of shapes. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapes: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapes = shapes
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteParagraphRequest: Codable {

    /** Remove a paragraph. */
    public var name: String

    /** Remove a paragraph. */
    public var slideIndex: Int

    /** Remove a paragraph. */
    public var shapeIndex: Int

    /** Remove a paragraph. */
    public var paragraphIndex: Int

    /** Remove a paragraph. */
    public var password: String

    /** Remove a paragraph. */
    public var folder: String

    /** Remove a paragraph. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteParagraphsRequest: Codable {

    /** Remove a range of paragraphs. */
    public var name: String

    /** Remove a range of paragraphs. */
    public var slideIndex: Int

    /** Remove a range of paragraphs. */
    public var shapeIndex: Int

    /** Remove a range of paragraphs. */
    public var paragraphs: [Int]

    /** Remove a range of paragraphs. */
    public var password: String

    /** Remove a range of paragraphs. */
    public var folder: String

    /** Remove a range of paragraphs. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphs: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphs = paragraphs
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeletePortionRequest: Codable {

    /** Remove a portion. */
    public var name: String

    /** Remove a portion. */
    public var slideIndex: Int

    /** Remove a portion. */
    public var shapeIndex: Int

    /** Remove a portion. */
    public var paragraphIndex: Int

    /** Remove a portion. */
    public var portionIndex: Int

    /** Remove a portion. */
    public var password: String

    /** Remove a portion. */
    public var folder: String

    /** Remove a portion. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeletePortionsRequest: Codable {

    /** Remove a range of portions. */
    public var name: String

    /** Remove a range of portions. */
    public var slideIndex: Int

    /** Remove a range of portions. */
    public var shapeIndex: Int

    /** Remove a range of portions. */
    public var paragraphIndex: Int

    /** Remove a range of portions. */
    public var portions: [Int]

    /** Remove a range of portions. */
    public var password: String

    /** Remove a range of portions. */
    public var folder: String

    /** Remove a range of portions. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portions: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portions = portions
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSectionRequest: Codable {

    /** Delete a presentation section. */
    public var name: String

    /** Delete a presentation section. */
    public var sectionIndex: Int

    /** Delete a presentation section. */
    public var withSlides: Bool?

    /** Delete a presentation section. */
    public var password: String

    /** Delete a presentation section. */
    public var folder: String

    /** Delete a presentation section. */
    public var storage: String

    public init(name: String, sectionIndex: Int, withSlides: Bool? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.sectionIndex = sectionIndex
        self.withSlides = withSlides
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSectionsRequest: Codable {

    /** Delete presentation sections. */
    public var name: String

    /** Delete presentation sections. */
    public var sections: [Int]

    /** Delete presentation sections. */
    public var withSlides: Bool?

    /** Delete presentation sections. */
    public var password: String

    /** Delete presentation sections. */
    public var folder: String

    /** Delete presentation sections. */
    public var storage: String

    public init(name: String, sections: [Int] = [Int](), withSlides: Bool? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.sections = sections
        self.withSlides = withSlides
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideAnimationRequest: Codable {

    /** Remove animation from a slide. */
    public var name: String

    /** Remove animation from a slide. */
    public var slideIndex: Int

    /** Remove animation from a slide. */
    public var password: String

    /** Remove animation from a slide. */
    public var folder: String

    /** Remove animation from a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideAnimationEffectRequest: Codable {

    /** Remove an effect from slide animation. */
    public var name: String

    /** Remove an effect from slide animation. */
    public var slideIndex: Int

    /** Remove an effect from slide animation. */
    public var effectIndex: Int

    /** Remove an effect from slide animation. */
    public var password: String

    /** Remove an effect from slide animation. */
    public var folder: String

    /** Remove an effect from slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, effectIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.effectIndex = effectIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideAnimationInteractiveSequenceRequest: Codable {

    /** Remove an interactive sequence from slide animation. */
    public var name: String

    /** Remove an interactive sequence from slide animation. */
    public var slideIndex: Int

    /** Remove an interactive sequence from slide animation. */
    public var sequenceIndex: Int

    /** Remove an interactive sequence from slide animation. */
    public var password: String

    /** Remove an interactive sequence from slide animation. */
    public var folder: String

    /** Remove an interactive sequence from slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideAnimationInteractiveSequenceEffectRequest: Codable {

    /** Remove an effect from slide animation interactive sequence. */
    public var name: String

    /** Remove an effect from slide animation interactive sequence. */
    public var slideIndex: Int

    /** Remove an effect from slide animation interactive sequence. */
    public var sequenceIndex: Int

    /** Remove an effect from slide animation interactive sequence. */
    public var effectIndex: Int

    /** Remove an effect from slide animation interactive sequence. */
    public var password: String

    /** Remove an effect from slide animation interactive sequence. */
    public var folder: String

    /** Remove an effect from slide animation interactive sequence. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, effectIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.effectIndex = effectIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideAnimationInteractiveSequencesRequest: Codable {

    /** Clear all interactive sequences from slide animation. */
    public var name: String

    /** Clear all interactive sequences from slide animation. */
    public var slideIndex: Int

    /** Clear all interactive sequences from slide animation. */
    public var password: String

    /** Clear all interactive sequences from slide animation. */
    public var folder: String

    /** Clear all interactive sequences from slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideAnimationMainSequenceRequest: Codable {

    /** Clear main sequence in slide animation. */
    public var name: String

    /** Clear main sequence in slide animation. */
    public var slideIndex: Int

    /** Clear main sequence in slide animation. */
    public var password: String

    /** Clear main sequence in slide animation. */
    public var folder: String

    /** Clear main sequence in slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideByIndexRequest: Codable {

    /** Delete a presentation slide by index. */
    public var name: String

    /** Delete a presentation slide by index. */
    public var slideIndex: Int

    /** Delete a presentation slide by index. */
    public var password: String

    /** Delete a presentation slide by index. */
    public var folder: String

    /** Delete a presentation slide by index. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideShapeRequest: Codable {

    /** Remove a shape. */
    public var name: String

    /** Remove a shape. */
    public var slideIndex: Int

    /** Remove a shape. */
    public var shapeIndex: Int

    /** Remove a shape. */
    public var password: String

    /** Remove a shape. */
    public var folder: String

    /** Remove a shape. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideShapesRequest: Codable {

    /** Remove a range of shapes. */
    public var name: String

    /** Remove a range of shapes. */
    public var slideIndex: Int

    /** Remove a range of shapes. */
    public var shapes: [Int]

    /** Remove a range of shapes. */
    public var password: String

    /** Remove a range of shapes. */
    public var folder: String

    /** Remove a range of shapes. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapes: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapes = shapes
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideSubshapeRequest: Codable {

    /** Remove a shape (for smart art and group shapes). */
    public var name: String

    /** Remove a shape (for smart art and group shapes). */
    public var slideIndex: Int

    /** Remove a shape (for smart art and group shapes). */
    public var path: String

    /** Remove a shape (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Remove a shape (for smart art and group shapes). */
    public var password: String

    /** Remove a shape (for smart art and group shapes). */
    public var folder: String

    /** Remove a shape (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlideSubshapesRequest: Codable {

    /** Remove a range of shapes (for smart art and group shapes). */
    public var name: String

    /** Remove a range of shapes (for smart art and group shapes). */
    public var slideIndex: Int

    /** Remove a range of shapes (for smart art and group shapes). */
    public var path: String

    /** Remove a range of shapes (for smart art and group shapes). */
    public var shapes: [Int]

    /** Remove a range of shapes (for smart art and group shapes). */
    public var password: String

    /** Remove a range of shapes (for smart art and group shapes). */
    public var folder: String

    /** Remove a range of shapes (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapes: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapes = shapes
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlidesCleanSlidesListRequest: Codable {

    /** Delete presentation slides. */
    public var name: String

    /** Delete presentation slides. */
    public var slides: [Int]

    /** Delete presentation slides. */
    public var password: String

    /** Delete presentation slides. */
    public var folder: String

    /** Delete presentation slides. */
    public var storage: String

    public init(name: String, slides: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slides = slides
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlidesDocumentPropertiesRequest: Codable {

    /** Clean document properties. */
    public var name: String

    /** Clean document properties. */
    public var password: String

    /** Clean document properties. */
    public var folder: String

    /** Clean document properties. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlidesDocumentPropertyRequest: Codable {

    /** Delete document property. */
    public var name: String

    /** Delete document property. */
    public var propertyName: String

    /** Delete document property. */
    public var password: String

    /** Delete document property. */
    public var folder: String

    /** Delete document property. */
    public var storage: String

    public init(name: String, propertyName: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.propertyName = propertyName
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSlidesSlideBackgroundRequest: Codable {

    /** Remove background from a slide. */
    public var name: String

    /** Remove background from a slide. */
    public var slideIndex: Int

    /** Remove background from a slide. */
    public var password: String

    /** Remove background from a slide. */
    public var folder: String

    /** Remove background from a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSubshapeParagraphRequest: Codable {

    /** Remove a paragraph (for smart art and group shapes). */
    public var name: String

    /** Remove a paragraph (for smart art and group shapes). */
    public var slideIndex: Int

    /** Remove a paragraph (for smart art and group shapes). */
    public var path: String

    /** Remove a paragraph (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Remove a paragraph (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Remove a paragraph (for smart art and group shapes). */
    public var password: String

    /** Remove a paragraph (for smart art and group shapes). */
    public var folder: String

    /** Remove a paragraph (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSubshapeParagraphsRequest: Codable {

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var name: String

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var slideIndex: Int

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var path: String

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var paragraphs: [Int]

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var password: String

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var folder: String

    /** Remove a range of paragraphs (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphs: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphs = paragraphs
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSubshapePortionRequest: Codable {

    /** Remove a portion (for smart art and group shapes). */
    public var name: String

    /** Remove a portion (for smart art and group shapes). */
    public var slideIndex: Int

    /** Remove a portion (for smart art and group shapes). */
    public var path: String

    /** Remove a portion (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Remove a portion (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Remove a portion (for smart art and group shapes). */
    public var portionIndex: Int

    /** Remove a portion (for smart art and group shapes). */
    public var password: String

    /** Remove a portion (for smart art and group shapes). */
    public var folder: String

    /** Remove a portion (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DeleteSubshapePortionsRequest: Codable {

    /** Remove a range of portions (for smart art and group shapes). */
    public var name: String

    /** Remove a range of portions (for smart art and group shapes). */
    public var slideIndex: Int

    /** Remove a range of portions (for smart art and group shapes). */
    public var path: String

    /** Remove a range of portions (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Remove a range of portions (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Remove a range of portions (for smart art and group shapes). */
    public var portions: [Int]

    /** Remove a range of portions (for smart art and group shapes). */
    public var password: String

    /** Remove a range of portions (for smart art and group shapes). */
    public var folder: String

    /** Remove a range of portions (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portions: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portions = portions
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct DownloadFileRequest: Codable {

    /** Download file */
    public var path: String

    /** Download file */
    public var storageName: String

    /** Download file */
    public var versionId: String

    public init(path: String, storageName: String = "", versionId: String = "") {
        self.path = path
        self.storageName = storageName
        self.versionId = versionId
    }
}

public struct GetDiscUsageRequest: Codable {

    /** Get disc usage */
    public var storageName: String

    public init(storageName: String = "") {
        self.storageName = storageName
    }
}

public struct GetFileVersionsRequest: Codable {

    /** Get file versions */
    public var path: String

    /** Get file versions */
    public var storageName: String

    public init(path: String, storageName: String = "") {
        self.path = path
        self.storageName = storageName
    }
}

public struct GetFilesListRequest: Codable {

    /** Get all files and folders within a folder */
    public var path: String

    /** Get all files and folders within a folder */
    public var storageName: String

    public init(path: String, storageName: String = "") {
        self.path = path
        self.storageName = storageName
    }
}

public struct GetLayoutSlideRequest: Codable {

    /** Read presentation layoutSlide info. */
    public var name: String

    /** Read presentation layoutSlide info. */
    public var slideIndex: Int

    /** Read presentation layoutSlide info. */
    public var password: String

    /** Read presentation layoutSlide info. */
    public var folder: String

    /** Read presentation layoutSlide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetLayoutSlidesListRequest: Codable {

    /** Read presentation layoutSlides info. */
    public var name: String

    /** Read presentation layoutSlides info. */
    public var password: String

    /** Read presentation layoutSlides info. */
    public var folder: String

    /** Read presentation layoutSlides info. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetMasterSlideRequest: Codable {

    /** Read presentation masterSlide info. */
    public var name: String

    /** Read presentation masterSlide info. */
    public var slideIndex: Int

    /** Read presentation masterSlide info. */
    public var password: String

    /** Read presentation masterSlide info. */
    public var folder: String

    /** Read presentation masterSlide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetMasterSlidesListRequest: Codable {

    /** Read presentation masterSlides info. */
    public var name: String

    /** Read presentation masterSlides info. */
    public var password: String

    /** Read presentation masterSlides info. */
    public var folder: String

    /** Read presentation masterSlides info. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideRequest: Codable {

    /** Read notes slide info. */
    public var name: String

    /** Read notes slide info. */
    public var slideIndex: Int

    /** Read notes slide info. */
    public var password: String

    /** Read notes slide info. */
    public var folder: String

    /** Read notes slide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideExistsRequest: Codable {

    /** Get info whether a notes slide exists. */
    public var name: String

    /** Get info whether a notes slide exists. */
    public var slideIndex: Int

    /** Get info whether a notes slide exists. */
    public var password: String

    /** Get info whether a notes slide exists. */
    public var folder: String

    /** Get info whether a notes slide exists. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideHeaderFooterRequest: Codable {

    /** Get header/footer info for the notes slide. */
    public var name: String

    /** Get header/footer info for the notes slide. */
    public var slideIndex: Int

    /** Get header/footer info for the notes slide. */
    public var password: String

    /** Get header/footer info for the notes slide. */
    public var storage: String

    /** Get header/footer info for the notes slide. */
    public var folder: String

    public init(name: String, slideIndex: Int, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct GetNotesSlideShapeRequest: Codable {

    /** Read slide shape info. */
    public var name: String

    /** Read slide shape info. */
    public var slideIndex: Int

    /** Read slide shape info. */
    public var shapeIndex: Int

    /** Read slide shape info. */
    public var password: String

    /** Read slide shape info. */
    public var folder: String

    /** Read slide shape info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideShapeParagraphRequest: Codable {

    /** Read shape paragraph info. */
    public var name: String

    /** Read shape paragraph info. */
    public var slideIndex: Int

    /** Read shape paragraph info. */
    public var shapeIndex: Int

    /** Read shape paragraph info. */
    public var paragraphIndex: Int

    /** Read shape paragraph info. */
    public var password: String

    /** Read shape paragraph info. */
    public var folder: String

    /** Read shape paragraph info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideShapeParagraphsRequest: Codable {

    /** Read shape paragraphs info. */
    public var name: String

    /** Read shape paragraphs info. */
    public var slideIndex: Int

    /** Read shape paragraphs info. */
    public var shapeIndex: Int

    /** Read shape paragraphs info. */
    public var password: String

    /** Read shape paragraphs info. */
    public var folder: String

    /** Read shape paragraphs info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideShapePortionRequest: Codable {

    /** Read paragraph portion info. */
    public var name: String

    /** Read paragraph portion info. */
    public var slideIndex: Int

    /** Read paragraph portion info. */
    public var shapeIndex: Int

    /** Read paragraph portion info. */
    public var paragraphIndex: Int

    /** Read paragraph portion info. */
    public var portionIndex: Int

    /** Read paragraph portion info. */
    public var password: String

    /** Read paragraph portion info. */
    public var folder: String

    /** Read paragraph portion info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideShapePortionsRequest: Codable {

    /** Read paragraph portions info. */
    public var name: String

    /** Read paragraph portions info. */
    public var slideIndex: Int

    /** Read paragraph portions info. */
    public var shapeIndex: Int

    /** Read paragraph portions info. */
    public var paragraphIndex: Int

    /** Read paragraph portions info. */
    public var password: String

    /** Read paragraph portions info. */
    public var folder: String

    /** Read paragraph portions info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideShapesRequest: Codable {

    /** Read slide shapes info. */
    public var name: String

    /** Read slide shapes info. */
    public var slideIndex: Int

    /** Read slide shapes info. */
    public var password: String

    /** Read slide shapes info. */
    public var folder: String

    /** Read slide shapes info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetNotesSlideWithFormatRequest: Codable {

    /** Convert notes slide to the specified image format. */
    public var name: String

    /** Convert notes slide to the specified image format. */
    public var slideIndex: Int

    /** Convert notes slide to the specified image format. */
    public var format: String

    /** Convert notes slide to the specified image format. */
    public var width: Int?

    /** Convert notes slide to the specified image format. */
    public var height: Int?

    /** Convert notes slide to the specified image format. */
    public var password: String

    /** Convert notes slide to the specified image format. */
    public var folder: String

    /** Convert notes slide to the specified image format. */
    public var storage: String

    /** Convert notes slide to the specified image format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, format: String, width: Int? = nil, height: Int? = nil, password: String = "", folder: String = "", storage: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.format = format
        self.width = width
        self.height = height
        self.password = password
        self.folder = folder
        self.storage = storage
        self.fontsFolder = fontsFolder
    }
}

public struct GetParagraphPortionRequest: Codable {

    /** Read paragraph portion info. */
    public var name: String

    /** Read paragraph portion info. */
    public var slideIndex: Int

    /** Read paragraph portion info. */
    public var shapeIndex: Int

    /** Read paragraph portion info. */
    public var paragraphIndex: Int

    /** Read paragraph portion info. */
    public var portionIndex: Int

    /** Read paragraph portion info. */
    public var password: String

    /** Read paragraph portion info. */
    public var folder: String

    /** Read paragraph portion info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetParagraphPortionsRequest: Codable {

    /** Read paragraph portions info. */
    public var name: String

    /** Read paragraph portions info. */
    public var slideIndex: Int

    /** Read paragraph portions info. */
    public var shapeIndex: Int

    /** Read paragraph portions info. */
    public var paragraphIndex: Int

    /** Read paragraph portions info. */
    public var password: String

    /** Read paragraph portions info. */
    public var folder: String

    /** Read paragraph portions info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSectionsRequest: Codable {

    /** Read presentation sections info. */
    public var name: String

    /** Read presentation sections info. */
    public var password: String

    /** Read presentation sections info. */
    public var folder: String

    /** Read presentation sections info. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideAnimationRequest: Codable {

    /** Read slide animation effects. */
    public var name: String

    /** Read slide animation effects. */
    public var slideIndex: Int

    /** Read slide animation effects. */
    public var shapeIndex: Int?

    /** Read slide animation effects. */
    public var password: String

    /** Read slide animation effects. */
    public var folder: String

    /** Read slide animation effects. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideHeaderFooterRequest: Codable {

    /** Get footer info for the slide. */
    public var name: String

    /** Get footer info for the slide. */
    public var slideIndex: Int

    /** Get footer info for the slide. */
    public var password: String

    /** Get footer info for the slide. */
    public var folder: String

    /** Get footer info for the slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideShapeRequest: Codable {

    /** Read slide shape info. */
    public var name: String

    /** Read slide shape info. */
    public var slideIndex: Int

    /** Read slide shape info. */
    public var shapeIndex: Int

    /** Read slide shape info. */
    public var password: String

    /** Read slide shape info. */
    public var folder: String

    /** Read slide shape info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideShapeParagraphRequest: Codable {

    /** Read shape paragraph info. */
    public var name: String

    /** Read shape paragraph info. */
    public var slideIndex: Int

    /** Read shape paragraph info. */
    public var shapeIndex: Int

    /** Read shape paragraph info. */
    public var paragraphIndex: Int

    /** Read shape paragraph info. */
    public var password: String

    /** Read shape paragraph info. */
    public var folder: String

    /** Read shape paragraph info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideShapeParagraphsRequest: Codable {

    /** Read shape paragraphs info. */
    public var name: String

    /** Read shape paragraphs info. */
    public var slideIndex: Int

    /** Read shape paragraphs info. */
    public var shapeIndex: Int

    /** Read shape paragraphs info. */
    public var password: String

    /** Read shape paragraphs info. */
    public var folder: String

    /** Read shape paragraphs info. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideShapesRequest: Codable {

    /** Read slide shapes info. */
    public var name: String

    /** Read slide shapes info. */
    public var slideIndex: Int

    /** Read slide shapes info. */
    public var password: String

    /** Read slide shapes info. */
    public var folder: String

    /** Read slide shapes info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideSubshapeRequest: Codable {

    /** Read slide shape info (for smart art and group shapes). */
    public var name: String

    /** Read slide shape info (for smart art and group shapes). */
    public var slideIndex: Int

    /** Read slide shape info (for smart art and group shapes). */
    public var path: String

    /** Read slide shape info (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Read slide shape info (for smart art and group shapes). */
    public var password: String

    /** Read slide shape info (for smart art and group shapes). */
    public var folder: String

    /** Read slide shape info (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideSubshapeParagraphRequest: Codable {

    /** Read shape paragraph info (for smart art and group shapes). */
    public var name: String

    /** Read shape paragraph info (for smart art and group shapes). */
    public var slideIndex: Int

    /** Read shape paragraph info (for smart art and group shapes). */
    public var path: String

    /** Read shape paragraph info (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Read shape paragraph info (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Read shape paragraph info (for smart art and group shapes). */
    public var password: String

    /** Read shape paragraph info (for smart art and group shapes). */
    public var folder: String

    /** Read shape paragraph info (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideSubshapeParagraphsRequest: Codable {

    /** Read shape paragraphs info (for smart art and group shapes). */
    public var name: String

    /** Read shape paragraphs info (for smart art and group shapes). */
    public var slideIndex: Int

    /** Read shape paragraphs info (for smart art and group shapes). */
    public var path: String

    /** Read shape paragraphs info (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Read shape paragraphs info (for smart art and group shapes). */
    public var password: String

    /** Read shape paragraphs info (for smart art and group shapes). */
    public var folder: String

    /** Read shape paragraphs info (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlideSubshapesRequest: Codable {

    /** Read slide shapes info. */
    public var name: String

    /** Read slide shapes info. */
    public var slideIndex: Int

    /** Read slide shapes info. */
    public var path: String

    /** Read slide shapes info. */
    public var password: String

    /** Read slide shapes info. */
    public var folder: String

    /** Read slide shapes info. */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesApiInfoRequest: Codable {

    public init() {
    }
}

public struct GetSlidesDocumentRequest: Codable {

    /** Read presentation info. */
    public var name: String

    /** Read presentation info. */
    public var password: String

    /** Read presentation info. */
    public var storage: String

    /** Read presentation info. */
    public var folder: String

    public init(name: String, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct GetSlidesDocumentPropertiesRequest: Codable {

    /** Read presentation document properties. */
    public var name: String

    /** Read presentation document properties. */
    public var password: String

    /** Read presentation document properties. */
    public var folder: String

    /** Read presentation document properties. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesDocumentPropertyRequest: Codable {

    /** Read presentation document property. */
    public var name: String

    /** Read presentation document property. */
    public var propertyName: String

    /** Read presentation document property. */
    public var password: String

    /** Read presentation document property. */
    public var folder: String

    /** Read presentation document property. */
    public var storage: String

    public init(name: String, propertyName: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.propertyName = propertyName
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesImageWithDefaultFormatRequest: Codable {

    /** Get image binary data. */
    public var name: String

    /** Get image binary data. */
    public var index: Int

    /** Get image binary data. */
    public var password: String

    /** Get image binary data. */
    public var folder: String

    /** Get image binary data. */
    public var storage: String

    public init(name: String, index: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.index = index
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesImageWithFormatRequest: Codable {

    /** Get image in specified format. */
    public var name: String

    /** Get image in specified format. */
    public var index: Int

    /** Get image in specified format. */
    public var format: String

    /** Get image in specified format. */
    public var password: String

    /** Get image in specified format. */
    public var folder: String

    /** Get image in specified format. */
    public var storage: String

    public init(name: String, index: Int, format: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.index = index
        self.format = format
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesImagesRequest: Codable {

    /** Read presentation images info. */
    public var name: String

    /** Read presentation images info. */
    public var password: String

    /** Read presentation images info. */
    public var folder: String

    /** Read presentation images info. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesPlaceholderRequest: Codable {

    /** Read slide placeholder info. */
    public var name: String

    /** Read slide placeholder info. */
    public var slideIndex: Int

    /** Read slide placeholder info. */
    public var placeholderIndex: Int

    /** Read slide placeholder info. */
    public var password: String

    /** Read slide placeholder info. */
    public var folder: String

    /** Read slide placeholder info. */
    public var storage: String

    public init(name: String, slideIndex: Int, placeholderIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.placeholderIndex = placeholderIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesPlaceholdersRequest: Codable {

    /** Read slide placeholders info. */
    public var name: String

    /** Read slide placeholders info. */
    public var slideIndex: Int

    /** Read slide placeholders info. */
    public var password: String

    /** Read slide placeholders info. */
    public var folder: String

    /** Read slide placeholders info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesPresentationTextItemsRequest: Codable {

    /** Extract presentation text items. */
    public var name: String

    /** Extract presentation text items. */
    public var withEmpty: Bool?

    /** Extract presentation text items. */
    public var password: String

    /** Extract presentation text items. */
    public var folder: String

    /** Extract presentation text items. */
    public var storage: String

    public init(name: String, withEmpty: Bool? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.withEmpty = withEmpty
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesProtectionPropertiesRequest: Codable {

    /** Read presentation protection properties. */
    public var name: String

    /** Read presentation protection properties. */
    public var password: String

    /** Read presentation protection properties. */
    public var folder: String

    /** Read presentation protection properties. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesSlideRequest: Codable {

    /** Read presentation slide info. */
    public var name: String

    /** Read presentation slide info. */
    public var slideIndex: Int

    /** Read presentation slide info. */
    public var password: String

    /** Read presentation slide info. */
    public var folder: String

    /** Read presentation slide info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesSlideBackgroundRequest: Codable {

    /** Read slide background info. */
    public var name: String

    /** Read slide background info. */
    public var slideIndex: Int

    /** Read slide background info. */
    public var password: String

    /** Read slide background info. */
    public var folder: String

    /** Read slide background info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesSlideCommentsRequest: Codable {

    /** Read presentation slide comments. */
    public var name: String

    /** Read presentation slide comments. */
    public var slideIndex: Int

    /** Read presentation slide comments. */
    public var password: String

    /** Read presentation slide comments. */
    public var folder: String

    /** Read presentation slide comments. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesSlideImagesRequest: Codable {

    /** Read slide images info. */
    public var name: String

    /** Read slide images info. */
    public var slideIndex: Int

    /** Read slide images info. */
    public var password: String

    /** Read slide images info. */
    public var folder: String

    /** Read slide images info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesSlidePropertiesRequest: Codable {

    /** Read presentation slide properties. */
    public var name: String

    /** Read presentation slide properties. */
    public var password: String

    /** Read presentation slide properties. */
    public var folder: String

    /** Read presentation slide properties. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesSlideTextItemsRequest: Codable {

    /** Extract slide text items. */
    public var name: String

    /** Extract slide text items. */
    public var slideIndex: Int

    /** Extract slide text items. */
    public var withEmpty: Bool?

    /** Extract slide text items. */
    public var password: String

    /** Extract slide text items. */
    public var folder: String

    /** Extract slide text items. */
    public var storage: String

    public init(name: String, slideIndex: Int, withEmpty: Bool? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.withEmpty = withEmpty
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesSlidesListRequest: Codable {

    /** Read presentation slides info. */
    public var name: String

    /** Read presentation slides info. */
    public var password: String

    /** Read presentation slides info. */
    public var folder: String

    /** Read presentation slides info. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesThemeRequest: Codable {

    /** Read slide theme info. */
    public var name: String

    /** Read slide theme info. */
    public var slideIndex: Int

    /** Read slide theme info. */
    public var password: String

    /** Read slide theme info. */
    public var folder: String

    /** Read slide theme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesThemeColorSchemeRequest: Codable {

    /** Read slide theme color scheme info. */
    public var name: String

    /** Read slide theme color scheme info. */
    public var slideIndex: Int

    /** Read slide theme color scheme info. */
    public var password: String

    /** Read slide theme color scheme info. */
    public var folder: String

    /** Read slide theme color scheme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesThemeFontSchemeRequest: Codable {

    /** Read slide theme font scheme info. */
    public var name: String

    /** Read slide theme font scheme info. */
    public var slideIndex: Int

    /** Read slide theme font scheme info. */
    public var password: String

    /** Read slide theme font scheme info. */
    public var folder: String

    /** Read slide theme font scheme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesThemeFormatSchemeRequest: Codable {

    /** Read slide theme format scheme info. */
    public var name: String

    /** Read slide theme format scheme info. */
    public var slideIndex: Int

    /** Read slide theme format scheme info. */
    public var password: String

    /** Read slide theme format scheme info. */
    public var folder: String

    /** Read slide theme format scheme info. */
    public var storage: String

    public init(name: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSlidesViewPropertiesRequest: Codable {

    /** Read presentation document properties. */
    public var name: String

    /** Read presentation document properties. */
    public var password: String

    /** Read presentation document properties. */
    public var folder: String

    /** Read presentation document properties. */
    public var storage: String

    public init(name: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSubshapeParagraphPortionRequest: Codable {

    /** Read paragraph portion info (for smart art and group shapes). */
    public var name: String

    /** Read paragraph portion info (for smart art and group shapes). */
    public var slideIndex: Int

    /** Read paragraph portion info (for smart art and group shapes). */
    public var path: String

    /** Read paragraph portion info (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Read paragraph portion info (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Read paragraph portion info (for smart art and group shapes). */
    public var portionIndex: Int

    /** Read paragraph portion info (for smart art and group shapes). */
    public var password: String

    /** Read paragraph portion info (for smart art and group shapes). */
    public var folder: String

    /** Read paragraph portion info (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct GetSubshapeParagraphPortionsRequest: Codable {

    /** Read paragraph portions info (for smart art and group shapes). */
    public var name: String

    /** Read paragraph portions info (for smart art and group shapes). */
    public var slideIndex: Int

    /** Read paragraph portions info (for smart art and group shapes). */
    public var path: String

    /** Read paragraph portions info (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Read paragraph portions info (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Read paragraph portions info (for smart art and group shapes). */
    public var password: String

    /** Read paragraph portions info (for smart art and group shapes). */
    public var folder: String

    /** Read paragraph portions info (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct MoveFileRequest: Codable {

    /** Move file */
    public var srcPath: String

    /** Move file */
    public var destPath: String

    /** Move file */
    public var srcStorageName: String

    /** Move file */
    public var destStorageName: String

    /** Move file */
    public var versionId: String

    public init(srcPath: String, destPath: String, srcStorageName: String = "", destStorageName: String = "", versionId: String = "") {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
        self.versionId = versionId
    }
}

public struct MoveFolderRequest: Codable {

    /** Move folder */
    public var srcPath: String

    /** Move folder */
    public var destPath: String

    /** Move folder */
    public var srcStorageName: String

    /** Move folder */
    public var destStorageName: String

    public init(srcPath: String, destPath: String, srcStorageName: String = "", destStorageName: String = "") {
        self.srcPath = srcPath
        self.destPath = destPath
        self.srcStorageName = srcStorageName
        self.destStorageName = destStorageName
    }
}

public struct ObjectExistsRequest: Codable {

    /** Check if file or folder exists */
    public var path: String

    /** Check if file or folder exists */
    public var storageName: String

    /** Check if file or folder exists */
    public var versionId: String

    public init(path: String, storageName: String = "", versionId: String = "") {
        self.path = path
        self.storageName = storageName
        self.versionId = versionId
    }
}

public struct PostAddNewParagraphRequest: Codable {

    /** Creates new paragraph. */
    public var name: String

    /** Creates new paragraph. */
    public var slideIndex: Int

    /** Creates new paragraph. */
    public var shapeIndex: Int

    /** Creates new paragraph. */
    public var dto: Paragraph

    /** Creates new paragraph. */
    public var password: String

    /** Creates new paragraph. */
    public var folder: String

    /** Creates new paragraph. */
    public var storage: String

    /** Creates new paragraph. */
    public var position: Int?

    public init(name: String, slideIndex: Int, shapeIndex: Int, dto: Paragraph, password: String = "", folder: String = "", storage: String = "", position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct PostAddNewPortionRequest: Codable {

    /** Creates new portion. */
    public var name: String

    /** Creates new portion. */
    public var slideIndex: Int

    /** Creates new portion. */
    public var shapeIndex: Int

    /** Creates new portion. */
    public var paragraphIndex: Int

    /** Creates new portion. */
    public var dto: Portion

    /** Creates new portion. */
    public var password: String

    /** Creates new portion. */
    public var folder: String

    /** Creates new portion. */
    public var storage: String

    /** Creates new portion. */
    public var position: Int?

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, dto: Portion, password: String = "", folder: String = "", storage: String = "", position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct PostAddNewShapeRequest: Codable {

    /** Create new shape. */
    public var name: String

    /** Create new shape. */
    public var slideIndex: Int

    /** Create new shape. */
    public var dto: ShapeBase?

    /** Create new shape. */
    public var password: String

    /** Create new shape. */
    public var folder: String

    /** Create new shape. */
    public var storage: String

    /** Create new shape. */
    public var shapeToClone: Int?

    /** Create new shape. */
    public var position: Int?

    public init(name: String, slideIndex: Int, dto: ShapeBase? = nil, password: String = "", folder: String = "", storage: String = "", shapeToClone: Int? = nil, position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.shapeToClone = shapeToClone
        self.position = position
    }
}

public struct PostAddNewSubshapeRequest: Codable {

    /** Create new shape (for smart art and group shapes). */
    public var name: String

    /** Create new shape (for smart art and group shapes). */
    public var slideIndex: Int

    /** Create new shape (for smart art and group shapes). */
    public var path: String

    /** Create new shape (for smart art and group shapes). */
    public var dto: ShapeBase?

    /** Create new shape (for smart art and group shapes). */
    public var password: String

    /** Create new shape (for smart art and group shapes). */
    public var folder: String

    /** Create new shape (for smart art and group shapes). */
    public var storage: String

    /** Create new shape (for smart art and group shapes). */
    public var shapeToClone: Int?

    /** Create new shape (for smart art and group shapes). */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, dto: ShapeBase? = nil, password: String = "", folder: String = "", storage: String = "", shapeToClone: Int? = nil, position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.shapeToClone = shapeToClone
        self.position = position
    }
}

public struct PostAddNewSubshapeParagraphRequest: Codable {

    /** Creates new paragraph (for smart art and group shapes). */
    public var name: String

    /** Creates new paragraph (for smart art and group shapes). */
    public var slideIndex: Int

    /** Creates new paragraph (for smart art and group shapes). */
    public var path: String

    /** Creates new paragraph (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Creates new paragraph (for smart art and group shapes). */
    public var dto: Paragraph

    /** Creates new paragraph (for smart art and group shapes). */
    public var password: String

    /** Creates new paragraph (for smart art and group shapes). */
    public var folder: String

    /** Creates new paragraph (for smart art and group shapes). */
    public var storage: String

    /** Creates new paragraph (for smart art and group shapes). */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, dto: Paragraph, password: String = "", folder: String = "", storage: String = "", position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct PostAddNewSubshapePortionRequest: Codable {

    /** Creates new portion (for smart art and group shapes). */
    public var name: String

    /** Creates new portion (for smart art and group shapes). */
    public var slideIndex: Int

    /** Creates new portion (for smart art and group shapes). */
    public var path: String

    /** Creates new portion (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Creates new portion (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Creates new portion (for smart art and group shapes). */
    public var dto: Portion

    /** Creates new portion (for smart art and group shapes). */
    public var password: String

    /** Creates new portion (for smart art and group shapes). */
    public var folder: String

    /** Creates new portion (for smart art and group shapes). */
    public var storage: String

    /** Creates new portion (for smart art and group shapes). */
    public var position: Int?

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, dto: Portion, password: String = "", folder: String = "", storage: String = "", position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct PostAddNotesSlideRequest: Codable {

    /** Add new notes slide. */
    public var name: String

    /** Add new notes slide. */
    public var slideIndex: Int

    /** Add new notes slide. */
    public var dto: NotesSlide

    /** Add new notes slide. */
    public var password: String

    /** Add new notes slide. */
    public var folder: String

    /** Add new notes slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, dto: NotesSlide, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostChartCategoryRequest: Codable {

    /** Add a new category to a chart. */
    public var name: String

    /** Add a new category to a chart. */
    public var slideIndex: Int

    /** Add a new category to a chart. */
    public var shapeIndex: Int

    /** Add a new category to a chart. */
    public var category: ChartCategory

    /** Add a new category to a chart. */
    public var password: String

    /** Add a new category to a chart. */
    public var folder: String

    /** Add a new category to a chart. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, category: ChartCategory, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.category = category
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostChartDataPointRequest: Codable {

    /** Add a new data point to a chart series. */
    public var name: String

    /** Add a new data point to a chart series. */
    public var slideIndex: Int

    /** Add a new data point to a chart series. */
    public var shapeIndex: Int

    /** Add a new data point to a chart series. */
    public var seriesIndex: Int

    /** Add a new data point to a chart series. */
    public var dataPoint: DataPoint

    /** Add a new data point to a chart series. */
    public var password: String

    /** Add a new data point to a chart series. */
    public var folder: String

    /** Add a new data point to a chart series. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, seriesIndex: Int, dataPoint: DataPoint, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.seriesIndex = seriesIndex
        self.dataPoint = dataPoint
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostChartSeriesRequest: Codable {

    /** Add a new series to a chart. */
    public var name: String

    /** Add a new series to a chart. */
    public var slideIndex: Int

    /** Add a new series to a chart. */
    public var shapeIndex: Int

    /** Add a new series to a chart. */
    public var series: Series

    /** Add a new series to a chart. */
    public var password: String

    /** Add a new series to a chart. */
    public var folder: String

    /** Add a new series to a chart. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, series: Series, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.series = series
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostCopyLayoutSlideFromSourcePresentationRequest: Codable {

    /** Copy layoutSlide from source presentation. */
    public var name: String

    /** Copy layoutSlide from source presentation. */
    public var cloneFrom: String

    /** Copy layoutSlide from source presentation. */
    public var cloneFromPosition: Int

    /** Copy layoutSlide from source presentation. */
    public var cloneFromPassword: String

    /** Copy layoutSlide from source presentation. */
    public var cloneFromStorage: String

    /** Copy layoutSlide from source presentation. */
    public var password: String

    /** Copy layoutSlide from source presentation. */
    public var folder: String

    /** Copy layoutSlide from source presentation. */
    public var storage: String

    public init(name: String, cloneFrom: String, cloneFromPosition: Int, cloneFromPassword: String = "", cloneFromStorage: String = "", password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.cloneFrom = cloneFrom
        self.cloneFromPosition = cloneFromPosition
        self.cloneFromPassword = cloneFromPassword
        self.cloneFromStorage = cloneFromStorage
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostCopyMasterSlideFromSourcePresentationRequest: Codable {

    /** Copy masterSlide from source presentation. */
    public var name: String

    /** Copy masterSlide from source presentation. */
    public var cloneFrom: String

    /** Copy masterSlide from source presentation. */
    public var cloneFromPosition: Int

    /** Copy masterSlide from source presentation. */
    public var cloneFromPassword: String

    /** Copy masterSlide from source presentation. */
    public var cloneFromStorage: String

    /** Copy masterSlide from source presentation. */
    public var applyToAll: Bool?

    /** Copy masterSlide from source presentation. */
    public var password: String

    /** Copy masterSlide from source presentation. */
    public var folder: String

    /** Copy masterSlide from source presentation. */
    public var storage: String

    public init(name: String, cloneFrom: String, cloneFromPosition: Int, cloneFromPassword: String = "", cloneFromStorage: String = "", applyToAll: Bool? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.cloneFrom = cloneFrom
        self.cloneFromPosition = cloneFromPosition
        self.cloneFromPassword = cloneFromPassword
        self.cloneFromStorage = cloneFromStorage
        self.applyToAll = applyToAll
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostGetNotesSlideRequest: Codable {

    /** Read notes slide info. */
    public var document: Data

    /** Read notes slide info. */
    public var slideIndex: Int

    /** Read notes slide info. */
    public var password: String

    public init(document: Data, slideIndex: Int, password: String = "") {
        self.document = document
        self.slideIndex = slideIndex
        self.password = password
    }
}

public struct PostGetNotesSlideExistsRequest: Codable {

    /** Get info whether a notes slide exists. */
    public var document: Data

    /** Get info whether a notes slide exists. */
    public var slideIndex: Int

    /** Get info whether a notes slide exists. */
    public var password: String

    public init(document: Data, slideIndex: Int, password: String = "") {
        self.document = document
        self.slideIndex = slideIndex
        self.password = password
    }
}

public struct PostGetNotesSlideWithFormatRequest: Codable {

    /** Convert notes slide to the specified image format. */
    public var document: Data

    /** Convert notes slide to the specified image format. */
    public var slideIndex: Int

    /** Convert notes slide to the specified image format. */
    public var format: String

    /** Convert notes slide to the specified image format. */
    public var width: Int?

    /** Convert notes slide to the specified image format. */
    public var height: Int?

    /** Convert notes slide to the specified image format. */
    public var password: String

    /** Convert notes slide to the specified image format. */
    public var fontsFolder: String

    public init(document: Data, slideIndex: Int, format: String, width: Int? = nil, height: Int? = nil, password: String = "", fontsFolder: String = "") {
        self.document = document
        self.slideIndex = slideIndex
        self.format = format
        self.width = width
        self.height = height
        self.password = password
        self.fontsFolder = fontsFolder
    }
}

public struct PostNotesSlideAddNewParagraphRequest: Codable {

    /** Creates new paragraph. */
    public var name: String

    /** Creates new paragraph. */
    public var slideIndex: Int

    /** Creates new paragraph. */
    public var shapeIndex: Int

    /** Creates new paragraph. */
    public var dto: Paragraph

    /** Creates new paragraph. */
    public var password: String

    /** Creates new paragraph. */
    public var folder: String

    /** Creates new paragraph. */
    public var storage: String

    /** Creates new paragraph. */
    public var position: Int?

    public init(name: String, slideIndex: Int, shapeIndex: Int, dto: Paragraph, password: String = "", folder: String = "", storage: String = "", position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct PostNotesSlideAddNewPortionRequest: Codable {

    /** Creates new portion. */
    public var name: String

    /** Creates new portion. */
    public var slideIndex: Int

    /** Creates new portion. */
    public var shapeIndex: Int

    /** Creates new portion. */
    public var paragraphIndex: Int

    /** Creates new portion. */
    public var dto: Portion

    /** Creates new portion. */
    public var password: String

    /** Creates new portion. */
    public var folder: String

    /** Creates new portion. */
    public var storage: String

    /** Creates new portion. */
    public var position: Int?

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, dto: Portion, password: String = "", folder: String = "", storage: String = "", position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.position = position
    }
}

public struct PostNotesSlideAddNewShapeRequest: Codable {

    /** Create new shape. */
    public var name: String

    /** Create new shape. */
    public var slideIndex: Int

    /** Create new shape. */
    public var dto: ShapeBase

    /** Create new shape. */
    public var password: String

    /** Create new shape. */
    public var folder: String

    /** Create new shape. */
    public var storage: String

    /** Create new shape. */
    public var shapeToClone: Int?

    /** Create new shape. */
    public var position: Int?

    public init(name: String, slideIndex: Int, dto: ShapeBase, password: String = "", folder: String = "", storage: String = "", shapeToClone: Int? = nil, position: Int? = nil) {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
        self.shapeToClone = shapeToClone
        self.position = position
    }
}

public struct PostNotesSlideShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions?

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double?

    /** Render shape to specified picture format. */
    public var scaleY: Double?

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, format: String, options: IShapeExportOptions? = nil, password: String = "", folder: String = "", storage: String = "", scaleX: Double? = nil, scaleY: Double? = nil, bounds: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.format = format
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct PostPresentationMergeRequest: Codable {

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var name: String

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var request: PresentationsMergeRequest

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var password: String

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var storage: String

    /** Merge the presentation with other presentations specified in the request parameter. */
    public var folder: String

    public init(name: String, request: PresentationsMergeRequest, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.request = request
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PostSectionRequest: Codable {

    /** Create a section starting at a specified slide index. */
    public var name: String

    /** Create a section starting at a specified slide index. */
    public var sectionName: String

    /** Create a section starting at a specified slide index. */
    public var slideIndex: Int

    /** Create a section starting at a specified slide index. */
    public var password: String

    /** Create a section starting at a specified slide index. */
    public var folder: String

    /** Create a section starting at a specified slide index. */
    public var storage: String

    public init(name: String, sectionName: String, slideIndex: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.sectionName = sectionName
        self.slideIndex = slideIndex
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSectionMoveRequest: Codable {

    /** Move presentation section to a specified position. */
    public var name: String

    /** Move presentation section to a specified position. */
    public var sectionIndex: Int

    /** Move presentation section to a specified position. */
    public var newPosition: Int

    /** Move presentation section to a specified position. */
    public var password: String

    /** Move presentation section to a specified position. */
    public var folder: String

    /** Move presentation section to a specified position. */
    public var storage: String

    public init(name: String, sectionIndex: Int, newPosition: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.sectionIndex = sectionIndex
        self.newPosition = newPosition
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions?

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double?

    /** Render shape to specified picture format. */
    public var scaleY: Double?

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, format: String, options: IShapeExportOptions? = nil, password: String = "", folder: String = "", storage: String = "", scaleX: Double? = nil, scaleY: Double? = nil, bounds: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.format = format
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct PostSlideAnimationEffectRequest: Codable {

    /** Add an effect to slide animation. */
    public var name: String

    /** Add an effect to slide animation. */
    public var slideIndex: Int

    /** Add an effect to slide animation. */
    public var effect: Effect

    /** Add an effect to slide animation. */
    public var password: String

    /** Add an effect to slide animation. */
    public var folder: String

    /** Add an effect to slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, effect: Effect, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlideAnimationInteractiveSequenceRequest: Codable {

    /** Set slide animation. */
    public var name: String

    /** Set slide animation. */
    public var slideIndex: Int

    /** Set slide animation. */
    public var sequence: InteractiveSequence

    /** Set slide animation. */
    public var password: String

    /** Set slide animation. */
    public var folder: String

    /** Set slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequence: InteractiveSequence, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.sequence = sequence
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlideAnimationInteractiveSequenceEffectRequest: Codable {

    /** Add an animation effect to a slide interactive sequence. */
    public var name: String

    /** Add an animation effect to a slide interactive sequence. */
    public var slideIndex: Int

    /** Add an animation effect to a slide interactive sequence. */
    public var sequenceIndex: Int

    /** Add an animation effect to a slide interactive sequence. */
    public var effect: Effect

    /** Add an animation effect to a slide interactive sequence. */
    public var password: String

    /** Add an animation effect to a slide interactive sequence. */
    public var folder: String

    /** Add an animation effect to a slide interactive sequence. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, effect: Effect, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlideSaveAsRequest: Codable {

    /** Save a slide to a specified format. */
    public var name: String

    /** Save a slide to a specified format. */
    public var slideIndex: Int

    /** Save a slide to a specified format. */
    public var format: String

    /** Save a slide to a specified format. */
    public var options: ExportOptions?

    /** Save a slide to a specified format. */
    public var width: Int?

    /** Save a slide to a specified format. */
    public var height: Int?

    /** Save a slide to a specified format. */
    public var password: String

    /** Save a slide to a specified format. */
    public var folder: String

    /** Save a slide to a specified format. */
    public var storage: String

    /** Save a slide to a specified format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, format: String, options: ExportOptions? = nil, width: Int? = nil, height: Int? = nil, password: String = "", folder: String = "", storage: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.format = format
        self.options = options
        self.width = width
        self.height = height
        self.password = password
        self.folder = folder
        self.storage = storage
        self.fontsFolder = fontsFolder
    }
}

public struct PostSlidesAddRequest: Codable {

    /** Create a slide. */
    public var name: String

    /** Create a slide. */
    public var position: Int?

    /** Create a slide. */
    public var password: String

    /** Create a slide. */
    public var folder: String

    /** Create a slide. */
    public var storage: String

    /** Create a slide. */
    public var layoutAlias: String

    public init(name: String, position: Int? = nil, password: String = "", folder: String = "", storage: String = "", layoutAlias: String = "") {
        self.name = name
        self.position = position
        self.password = password
        self.folder = folder
        self.storage = storage
        self.layoutAlias = layoutAlias
    }
}

public struct PostSlidesConvertRequest: Codable {

    /** Convert presentation from request content to format specified. */
    public var document: Data

    /** Convert presentation from request content to format specified. */
    public var format: String

    /** Convert presentation from request content to format specified. */
    public var password: String

    /** Convert presentation from request content to format specified. */
    public var fontsFolder: String

    public init(document: Data, format: String, password: String = "", fontsFolder: String = "") {
        self.document = document
        self.format = format
        self.password = password
        self.fontsFolder = fontsFolder
    }
}

public struct PostSlidesCopyRequest: Codable {

    /** Copy a slide from the current or another presentation. */
    public var name: String

    /** Copy a slide from the current or another presentation. */
    public var slideToCopy: Int

    /** Copy a slide from the current or another presentation. */
    public var position: Int?

    /** Copy a slide from the current or another presentation. */
    public var source: String

    /** Copy a slide from the current or another presentation. */
    public var sourcePassword: String

    /** Copy a slide from the current or another presentation. */
    public var sourceStorage: String

    /** Copy a slide from the current or another presentation. */
    public var password: String

    /** Copy a slide from the current or another presentation. */
    public var folder: String

    /** Copy a slide from the current or another presentation. */
    public var storage: String

    public init(name: String, slideToCopy: Int, position: Int? = nil, source: String = "", sourcePassword: String = "", sourceStorage: String = "", password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideToCopy = slideToCopy
        self.position = position
        self.source = source
        self.sourcePassword = sourcePassword
        self.sourceStorage = sourceStorage
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlidesDocumentRequest: Codable {

    /** Create a presentation. */
    public var name: String

    /** Create a presentation. */
    public var data: Data?

    /** Create a presentation. */
    public var inputPassword: String

    /** Create a presentation. */
    public var password: String

    /** Create a presentation. */
    public var storage: String

    /** Create a presentation. */
    public var folder: String

    public init(name: String, data: Data? = nil, inputPassword: String = "", password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.data = data
        self.inputPassword = inputPassword
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PostSlidesDocumentFromHtmlRequest: Codable {

    /** Create presentation document from html. */
    public var name: String

    /** Create presentation document from html. */
    public var html: String

    /** Create presentation document from html. */
    public var password: String

    /** Create presentation document from html. */
    public var storage: String

    /** Create presentation document from html. */
    public var folder: String

    public init(name: String, html: String = "", password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.html = html
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PostSlidesDocumentFromPdfRequest: Codable {

    /** Create presentation document from pdf or append pdf to an existing presentation. */
    public var name: String

    /** Create presentation document from pdf or append pdf to an existing presentation. */
    public var pdf: Data?

    /** Create presentation document from pdf or append pdf to an existing presentation. */
    public var password: String

    /** Create presentation document from pdf or append pdf to an existing presentation. */
    public var storage: String

    /** Create presentation document from pdf or append pdf to an existing presentation. */
    public var folder: String

    public init(name: String, pdf: Data? = nil, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.pdf = pdf
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PostSlidesDocumentFromSourceRequest: Codable {

    /** Create a presentation from an existing source. */
    public var name: String

    /** Create a presentation from an existing source. */
    public var sourcePath: String

    /** Create a presentation from an existing source. */
    public var sourcePassword: String

    /** Create a presentation from an existing source. */
    public var sourceStorage: String

    /** Create a presentation from an existing source. */
    public var password: String

    /** Create a presentation from an existing source. */
    public var storage: String

    /** Create a presentation from an existing source. */
    public var folder: String

    public init(name: String, sourcePath: String = "", sourcePassword: String = "", sourceStorage: String = "", password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.sourcePath = sourcePath
        self.sourcePassword = sourcePassword
        self.sourceStorage = sourceStorage
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PostSlidesDocumentFromTemplateRequest: Codable {

    /** Create a presentation. */
    public var name: String

    /** Create a presentation. */
    public var templatePath: String

    /** Create a presentation. */
    public var data: String

    /** Create a presentation. */
    public var templatePassword: String

    /** Create a presentation. */
    public var templateStorage: String

    /** Create a presentation. */
    public var isImageDataEmbedded: Bool?

    /** Create a presentation. */
    public var password: String

    /** Create a presentation. */
    public var storage: String

    /** Create a presentation. */
    public var folder: String

    public init(name: String, templatePath: String, data: String = "", templatePassword: String = "", templateStorage: String = "", isImageDataEmbedded: Bool? = nil, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.templatePath = templatePath
        self.data = data
        self.templatePassword = templatePassword
        self.templateStorage = templateStorage
        self.isImageDataEmbedded = isImageDataEmbedded
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PostSlidesPipelineRequest: Codable {

    /** Performs slides pipeline. */
    public var pipeline: Pipeline

    /** Performs slides pipeline. */
    public var files: [Data]

    public init(pipeline: Pipeline, files: [Data] = [Data]()) {
        self.pipeline = pipeline
        self.files = files
    }
}

public struct PostSlidesPresentationReplaceTextRequest: Codable {

    /** Replace text with a new value. */
    public var name: String

    /** Replace text with a new value. */
    public var oldValue: String

    /** Replace text with a new value. */
    public var newValue: String

    /** Replace text with a new value. */
    public var ignoreCase: Bool?

    /** Replace text with a new value. */
    public var password: String

    /** Replace text with a new value. */
    public var folder: String

    /** Replace text with a new value. */
    public var storage: String

    public init(name: String, oldValue: String, newValue: String, ignoreCase: Bool? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.oldValue = oldValue
        self.newValue = newValue
        self.ignoreCase = ignoreCase
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlidesReorderRequest: Codable {

    /** Reorder presentation slide position. */
    public var name: String

    /** Reorder presentation slide position. */
    public var slideIndex: Int

    /** Reorder presentation slide position. */
    public var newPosition: Int

    /** Reorder presentation slide position. */
    public var password: String

    /** Reorder presentation slide position. */
    public var folder: String

    /** Reorder presentation slide position. */
    public var storage: String

    public init(name: String, slideIndex: Int, newPosition: Int, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.newPosition = newPosition
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlidesReorderManyRequest: Codable {

    /** Reorder presentation slides positions. */
    public var name: String

    /** Reorder presentation slides positions. */
    public var oldPositions: [Int]

    /** Reorder presentation slides positions. */
    public var newPositions: [Int]

    /** Reorder presentation slides positions. */
    public var password: String

    /** Reorder presentation slides positions. */
    public var folder: String

    /** Reorder presentation slides positions. */
    public var storage: String

    public init(name: String, oldPositions: [Int] = [Int](), newPositions: [Int] = [Int](), password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.oldPositions = oldPositions
        self.newPositions = newPositions
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlidesSaveAsRequest: Codable {

    /** Save a presentation to a specified format. */
    public var name: String

    /** Save a presentation to a specified format. */
    public var format: String

    /** Save a presentation to a specified format. */
    public var options: ExportOptions?

    /** Save a presentation to a specified format. */
    public var password: String

    /** Save a presentation to a specified format. */
    public var storage: String

    /** Save a presentation to a specified format. */
    public var folder: String

    /** Save a presentation to a specified format. */
    public var fontsFolder: String

    public init(name: String, format: String, options: ExportOptions? = nil, password: String = "", storage: String = "", folder: String = "", fontsFolder: String = "") {
        self.name = name
        self.format = format
        self.options = options
        self.password = password
        self.storage = storage
        self.folder = folder
        self.fontsFolder = fontsFolder
    }
}

public struct PostSlidesSetDocumentPropertiesRequest: Codable {

    /** Set document properties. */
    public var name: String

    /** Set document properties. */
    public var properties: DocumentProperties

    /** Set document properties. */
    public var password: String

    /** Set document properties. */
    public var folder: String

    /** Set document properties. */
    public var storage: String

    public init(name: String, properties: DocumentProperties, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.properties = properties
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlidesSlideReplaceTextRequest: Codable {

    /** Replace text with a new value. */
    public var name: String

    /** Replace text with a new value. */
    public var slideIndex: Int

    /** Replace text with a new value. */
    public var oldValue: String

    /** Replace text with a new value. */
    public var newValue: String

    /** Replace text with a new value. */
    public var ignoreCase: Bool?

    /** Replace text with a new value. */
    public var password: String

    /** Replace text with a new value. */
    public var folder: String

    /** Replace text with a new value. */
    public var storage: String

    public init(name: String, slideIndex: Int, oldValue: String, newValue: String, ignoreCase: Bool? = nil, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.oldValue = oldValue
        self.newValue = newValue
        self.ignoreCase = ignoreCase
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PostSlidesSplitRequest: Codable {

    /** Splitting presentations. Create one image per slide. */
    public var name: String

    /** Splitting presentations. Create one image per slide. */
    public var options: ExportOptions?

    /** Splitting presentations. Create one image per slide. */
    public var format: String

    /** Splitting presentations. Create one image per slide. */
    public var width: Int?

    /** Splitting presentations. Create one image per slide. */
    public var height: Int?

    /** Splitting presentations. Create one image per slide. */
    public var to: Int?

    /** Splitting presentations. Create one image per slide. */
    public var from: Int?

    /** Splitting presentations. Create one image per slide. */
    public var destFolder: String

    /** Splitting presentations. Create one image per slide. */
    public var password: String

    /** Splitting presentations. Create one image per slide. */
    public var storage: String

    /** Splitting presentations. Create one image per slide. */
    public var folder: String

    /** Splitting presentations. Create one image per slide. */
    public var fontsFolder: String

    public init(name: String, options: ExportOptions? = nil, format: String = "", width: Int? = nil, height: Int? = nil, to: Int? = nil, from: Int? = nil, destFolder: String = "", password: String = "", storage: String = "", folder: String = "", fontsFolder: String = "") {
        self.name = name
        self.options = options
        self.format = format
        self.width = width
        self.height = height
        self.to = to
        self.from = from
        self.destFolder = destFolder
        self.password = password
        self.storage = storage
        self.folder = folder
        self.fontsFolder = fontsFolder
    }
}

public struct PostSubshapeSaveAsRequest: Codable {

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var name: String

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var slideIndex: Int

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var path: String

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var format: String

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var options: IShapeExportOptions?

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var password: String

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var folder: String

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var storage: String

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var scaleX: Double?

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var scaleY: Double?

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var bounds: String

    /** Render shape to specified picture format (for smart art and group shapes). */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, format: String, options: IShapeExportOptions? = nil, password: String = "", folder: String = "", storage: String = "", scaleX: Double? = nil, scaleY: Double? = nil, bounds: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.format = format
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct PutChartCategoryRequest: Codable {

    /** Update a chart category. */
    public var name: String

    /** Update a chart category. */
    public var slideIndex: Int

    /** Update a chart category. */
    public var shapeIndex: Int

    /** Update a chart category. */
    public var categoryIndex: Int

    /** Update a chart category. */
    public var category: ChartCategory

    /** Update a chart category. */
    public var password: String

    /** Update a chart category. */
    public var folder: String

    /** Update a chart category. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, categoryIndex: Int, category: ChartCategory, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.categoryIndex = categoryIndex
        self.category = category
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutChartDataPointRequest: Codable {

    /** Update a data point in a chart series. */
    public var name: String

    /** Update a data point in a chart series. */
    public var slideIndex: Int

    /** Update a data point in a chart series. */
    public var shapeIndex: Int

    /** Update a data point in a chart series. */
    public var seriesIndex: Int

    /** Update a data point in a chart series. */
    public var pointIndex: Int

    /** Update a data point in a chart series. */
    public var dataPoint: DataPoint

    /** Update a data point in a chart series. */
    public var password: String

    /** Update a data point in a chart series. */
    public var folder: String

    /** Update a data point in a chart series. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, seriesIndex: Int, pointIndex: Int, dataPoint: DataPoint, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.seriesIndex = seriesIndex
        self.pointIndex = pointIndex
        self.dataPoint = dataPoint
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutChartSeriesRequest: Codable {

    /** Update a series in a chart. */
    public var name: String

    /** Update a series in a chart. */
    public var slideIndex: Int

    /** Update a series in a chart. */
    public var shapeIndex: Int

    /** Update a series in a chart. */
    public var seriesIndex: Int

    /** Update a series in a chart. */
    public var series: Series

    /** Update a series in a chart. */
    public var password: String

    /** Update a series in a chart. */
    public var folder: String

    /** Update a series in a chart. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, seriesIndex: Int, series: Series, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.seriesIndex = seriesIndex
        self.series = series
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutLayoutSlideRequest: Codable {

    /** Update a layoutSlide. */
    public var name: String

    /** Update a layoutSlide. */
    public var slideIndex: Int

    /** Update a layoutSlide. */
    public var slideDto: LayoutSlide

    /** Update a layoutSlide. */
    public var password: String

    /** Update a layoutSlide. */
    public var folder: String

    /** Update a layoutSlide. */
    public var storage: String

    public init(name: String, slideIndex: Int, slideDto: LayoutSlide, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.slideDto = slideDto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutNotesSlideHeaderFooterRequest: Codable {

    /** Set header/footer the notes slide. */
    public var name: String

    /** Set header/footer the notes slide. */
    public var slideIndex: Int

    /** Set header/footer the notes slide. */
    public var dto: NotesSlideHeaderFooter

    /** Set header/footer the notes slide. */
    public var password: String

    /** Set header/footer the notes slide. */
    public var storage: String

    /** Set header/footer the notes slide. */
    public var folder: String

    public init(name: String, slideIndex: Int, dto: NotesSlideHeaderFooter, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PutNotesSlideShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var outPath: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions?

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double?

    /** Render shape to specified picture format. */
    public var scaleY: Double?

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, format: String, outPath: String, options: IShapeExportOptions? = nil, password: String = "", folder: String = "", storage: String = "", scaleX: Double? = nil, scaleY: Double? = nil, bounds: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.format = format
        self.outPath = outPath
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct PutPresentationMergeRequest: Codable {

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var name: String

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var request: OrderedMergeRequest

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var password: String

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var storage: String

    /** Merge the presentation with other presentations or some of their slides specified in the request parameter. */
    public var folder: String

    public init(name: String, request: OrderedMergeRequest, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.request = request
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PutSectionRequest: Codable {

    /** Update section name. */
    public var name: String

    /** Update section name. */
    public var sectionIndex: Int

    /** Update section name. */
    public var sectionName: String

    /** Update section name. */
    public var password: String

    /** Update section name. */
    public var folder: String

    /** Update section name. */
    public var storage: String

    public init(name: String, sectionIndex: Int, sectionName: String, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.sectionIndex = sectionIndex
        self.sectionName = sectionName
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSectionsRequest: Codable {

    /** Replace existing presentation sections with the ones provided in the sections DTO. */
    public var name: String

    /** Replace existing presentation sections with the ones provided in the sections DTO. */
    public var sections: Sections

    /** Replace existing presentation sections with the ones provided in the sections DTO. */
    public var password: String

    /** Replace existing presentation sections with the ones provided in the sections DTO. */
    public var folder: String

    /** Replace existing presentation sections with the ones provided in the sections DTO. */
    public var storage: String

    public init(name: String, sections: Sections, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.sections = sections
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSetParagraphPortionPropertiesRequest: Codable {

    /** Update portion properties. */
    public var name: String

    /** Update portion properties. */
    public var slideIndex: Int

    /** Update portion properties. */
    public var shapeIndex: Int

    /** Update portion properties. */
    public var paragraphIndex: Int

    /** Update portion properties. */
    public var portionIndex: Int

    /** Update portion properties. */
    public var dto: Portion

    /** Update portion properties. */
    public var password: String

    /** Update portion properties. */
    public var folder: String

    /** Update portion properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, dto: Portion, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSetParagraphPropertiesRequest: Codable {

    /** Update paragraph properties. */
    public var name: String

    /** Update paragraph properties. */
    public var slideIndex: Int

    /** Update paragraph properties. */
    public var shapeIndex: Int

    /** Update paragraph properties. */
    public var paragraphIndex: Int

    /** Update paragraph properties. */
    public var dto: Paragraph

    /** Update paragraph properties. */
    public var password: String

    /** Update paragraph properties. */
    public var folder: String

    /** Update paragraph properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, dto: Paragraph, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSetSubshapeParagraphPortionPropertiesRequest: Codable {

    /** Update portion properties (for smart art and group shapes). */
    public var name: String

    /** Update portion properties (for smart art and group shapes). */
    public var slideIndex: Int

    /** Update portion properties (for smart art and group shapes). */
    public var path: String

    /** Update portion properties (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Update portion properties (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Update portion properties (for smart art and group shapes). */
    public var portionIndex: Int

    /** Update portion properties (for smart art and group shapes). */
    public var dto: Portion

    /** Update portion properties (for smart art and group shapes). */
    public var password: String

    /** Update portion properties (for smart art and group shapes). */
    public var folder: String

    /** Update portion properties (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, dto: Portion, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSetSubshapeParagraphPropertiesRequest: Codable {

    /** Update paragraph properties (for smart art and group shapes). */
    public var name: String

    /** Update paragraph properties (for smart art and group shapes). */
    public var slideIndex: Int

    /** Update paragraph properties (for smart art and group shapes). */
    public var path: String

    /** Update paragraph properties (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Update paragraph properties (for smart art and group shapes). */
    public var paragraphIndex: Int

    /** Update paragraph properties (for smart art and group shapes). */
    public var dto: Paragraph

    /** Update paragraph properties (for smart art and group shapes). */
    public var password: String

    /** Update paragraph properties (for smart art and group shapes). */
    public var folder: String

    /** Update paragraph properties (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, paragraphIndex: Int, dto: Paragraph, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutShapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var outPath: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions?

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double?

    /** Render shape to specified picture format. */
    public var scaleY: Double?

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, format: String, outPath: String, options: IShapeExportOptions? = nil, password: String = "", folder: String = "", storage: String = "", scaleX: Double? = nil, scaleY: Double? = nil, bounds: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.format = format
        self.outPath = outPath
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct PutSlideAnimationRequest: Codable {

    /** Set slide animation. */
    public var name: String

    /** Set slide animation. */
    public var slideIndex: Int

    /** Set slide animation. */
    public var animation: SlideAnimation

    /** Set slide animation. */
    public var password: String

    /** Set slide animation. */
    public var folder: String

    /** Set slide animation. */
    public var storage: String

    public init(name: String, slideIndex: Int, animation: SlideAnimation, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.animation = animation
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlideAnimationEffectRequest: Codable {

    /** Modify an animation effect for a slide. */
    public var name: String

    /** Modify an animation effect for a slide. */
    public var slideIndex: Int

    /** Modify an animation effect for a slide. */
    public var effectIndex: Int

    /** Modify an animation effect for a slide. */
    public var effect: Effect

    /** Modify an animation effect for a slide. */
    public var password: String

    /** Modify an animation effect for a slide. */
    public var folder: String

    /** Modify an animation effect for a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, effectIndex: Int, effect: Effect, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.effectIndex = effectIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlideAnimationInteractiveSequenceEffectRequest: Codable {

    /** Modify an animation effect for a slide interactive sequence. */
    public var name: String

    /** Modify an animation effect for a slide interactive sequence. */
    public var slideIndex: Int

    /** Modify an animation effect for a slide interactive sequence. */
    public var sequenceIndex: Int

    /** Modify an animation effect for a slide interactive sequence. */
    public var effectIndex: Int

    /** Modify an animation effect for a slide interactive sequence. */
    public var effect: Effect

    /** Modify an animation effect for a slide interactive sequence. */
    public var password: String

    /** Modify an animation effect for a slide interactive sequence. */
    public var folder: String

    /** Modify an animation effect for a slide interactive sequence. */
    public var storage: String

    public init(name: String, slideIndex: Int, sequenceIndex: Int, effectIndex: Int, effect: Effect, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.sequenceIndex = sequenceIndex
        self.effectIndex = effectIndex
        self.effect = effect
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlideHeaderFooterRequest: Codable {

    /** Set footer the slide. */
    public var name: String

    /** Set footer the slide. */
    public var slideIndex: Int

    /** Set footer the slide. */
    public var dto: HeaderFooter

    /** Set footer the slide. */
    public var password: String

    /** Set footer the slide. */
    public var folder: String

    /** Set footer the slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, dto: HeaderFooter, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlideSaveAsRequest: Codable {

    /** Save a slide to a specified format. */
    public var name: String

    /** Save a slide to a specified format. */
    public var slideIndex: Int

    /** Save a slide to a specified format. */
    public var format: String

    /** Save a slide to a specified format. */
    public var outPath: String

    /** Save a slide to a specified format. */
    public var options: ExportOptions?

    /** Save a slide to a specified format. */
    public var width: Int?

    /** Save a slide to a specified format. */
    public var height: Int?

    /** Save a slide to a specified format. */
    public var password: String

    /** Save a slide to a specified format. */
    public var folder: String

    /** Save a slide to a specified format. */
    public var storage: String

    /** Save a slide to a specified format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, format: String, outPath: String, options: ExportOptions? = nil, width: Int? = nil, height: Int? = nil, password: String = "", folder: String = "", storage: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.format = format
        self.outPath = outPath
        self.options = options
        self.width = width
        self.height = height
        self.password = password
        self.folder = folder
        self.storage = storage
        self.fontsFolder = fontsFolder
    }
}

public struct PutSlideShapeInfoRequest: Codable {

    /** Update shape properties. */
    public var name: String

    /** Update shape properties. */
    public var slideIndex: Int

    /** Update shape properties. */
    public var shapeIndex: Int

    /** Update shape properties. */
    public var dto: ShapeBase

    /** Update shape properties. */
    public var password: String

    /** Update shape properties. */
    public var folder: String

    /** Update shape properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, dto: ShapeBase, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlideSubshapeInfoRequest: Codable {

    /** Update shape properties (for smart art and group shapes). */
    public var name: String

    /** Update shape properties (for smart art and group shapes). */
    public var slideIndex: Int

    /** Update shape properties (for smart art and group shapes). */
    public var path: String

    /** Update shape properties (for smart art and group shapes). */
    public var shapeIndex: Int

    /** Update shape properties (for smart art and group shapes). */
    public var dto: ShapeBase

    /** Update shape properties (for smart art and group shapes). */
    public var password: String

    /** Update shape properties (for smart art and group shapes). */
    public var folder: String

    /** Update shape properties (for smart art and group shapes). */
    public var storage: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, dto: ShapeBase, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlidesConvertRequest: Codable {

    /** Convert presentation from request content to format specified. */
    public var document: Data

    /** Convert presentation from request content to format specified. */
    public var format: String

    /** Convert presentation from request content to format specified. */
    public var outPath: String

    /** Convert presentation from request content to format specified. */
    public var password: String

    /** Convert presentation from request content to format specified. */
    public var fontsFolder: String

    public init(document: Data, format: String, outPath: String, password: String = "", fontsFolder: String = "") {
        self.document = document
        self.format = format
        self.outPath = outPath
        self.password = password
        self.fontsFolder = fontsFolder
    }
}

public struct PutSlidesDocumentFromHtmlRequest: Codable {

    /** Update presentation document from html. */
    public var name: String

    /** Update presentation document from html. */
    public var html: String

    /** Update presentation document from html. */
    public var password: String

    /** Update presentation document from html. */
    public var storage: String

    /** Update presentation document from html. */
    public var folder: String

    public init(name: String, html: String = "", password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.html = html
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PutSlidesHeaderFooterRequest: Codable {

    /** Set footers for all slides in a presentation. */
    public var name: String

    /** Set footers for all slides in a presentation. */
    public var dto: HeaderFooter

    /** Set footers for all slides in a presentation. */
    public var password: String

    /** Set footers for all slides in a presentation. */
    public var storage: String

    /** Set footers for all slides in a presentation. */
    public var folder: String

    public init(name: String, dto: HeaderFooter, password: String = "", storage: String = "", folder: String = "") {
        self.name = name
        self.dto = dto
        self.password = password
        self.storage = storage
        self.folder = folder
    }
}

public struct PutSlidesProtectionPropertiesRequest: Codable {

    /** Update presentation protection properties. */
    public var name: String

    /** Update presentation protection properties. */
    public var dto: ProtectionProperties

    /** Update presentation protection properties. */
    public var password: String

    /** Update presentation protection properties. */
    public var folder: String

    /** Update presentation protection properties. */
    public var storage: String

    public init(name: String, dto: ProtectionProperties, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlidesSaveAsRequest: Codable {

    /** Save a presentation to a specified format. */
    public var name: String

    /** Save a presentation to a specified format. */
    public var outPath: String

    /** Save a presentation to a specified format. */
    public var format: String

    /** Save a presentation to a specified format. */
    public var options: ExportOptions?

    /** Save a presentation to a specified format. */
    public var password: String

    /** Save a presentation to a specified format. */
    public var storage: String

    /** Save a presentation to a specified format. */
    public var folder: String

    /** Save a presentation to a specified format. */
    public var fontsFolder: String

    public init(name: String, outPath: String, format: String, options: ExportOptions? = nil, password: String = "", storage: String = "", folder: String = "", fontsFolder: String = "") {
        self.name = name
        self.outPath = outPath
        self.format = format
        self.options = options
        self.password = password
        self.storage = storage
        self.folder = folder
        self.fontsFolder = fontsFolder
    }
}

public struct PutSlidesSetDocumentPropertyRequest: Codable {

    /** Set document property. */
    public var name: String

    /** Set document property. */
    public var propertyName: String

    /** Set document property. */
    public var property: DocumentProperty

    /** Set document property. */
    public var password: String

    /** Set document property. */
    public var folder: String

    /** Set document property. */
    public var storage: String

    public init(name: String, propertyName: String, property: DocumentProperty, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.propertyName = propertyName
        self.property = property
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlidesSlideRequest: Codable {

    /** Update a slide. */
    public var name: String

    /** Update a slide. */
    public var slideIndex: Int

    /** Update a slide. */
    public var slideDto: Slide

    /** Update a slide. */
    public var password: String

    /** Update a slide. */
    public var folder: String

    /** Update a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, slideDto: Slide, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.slideDto = slideDto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlidesSlideBackgroundRequest: Codable {

    /** Set background for a slide. */
    public var name: String

    /** Set background for a slide. */
    public var slideIndex: Int

    /** Set background for a slide. */
    public var background: SlideBackground

    /** Set background for a slide. */
    public var folder: String

    /** Set background for a slide. */
    public var password: String

    /** Set background for a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, background: SlideBackground, folder: String = "", password: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.background = background
        self.folder = folder
        self.password = password
        self.storage = storage
    }
}

public struct PutSlidesSlideBackgroundColorRequest: Codable {

    /** Set background color for a slide. */
    public var name: String

    /** Set background color for a slide. */
    public var slideIndex: Int

    /** Set background color for a slide. */
    public var color: String

    /** Set background color for a slide. */
    public var folder: String

    /** Set background color for a slide. */
    public var password: String

    /** Set background color for a slide. */
    public var storage: String

    public init(name: String, slideIndex: Int, color: String, folder: String = "", password: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.color = color
        self.folder = folder
        self.password = password
        self.storage = storage
    }
}

public struct PutSlidesSlidePropertiesRequest: Codable {

    /** Update presentation slide properties. */
    public var name: String

    /** Update presentation slide properties. */
    public var dto: SlideProperties

    /** Update presentation slide properties. */
    public var password: String

    /** Update presentation slide properties. */
    public var folder: String

    /** Update presentation slide properties. */
    public var storage: String

    public init(name: String, dto: SlideProperties, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSlidesSlideSizeRequest: Codable {

    /** Set slide size for a presentation. */
    public var name: String

    /** Set slide size for a presentation. */
    public var password: String

    /** Set slide size for a presentation. */
    public var storage: String

    /** Set slide size for a presentation. */
    public var folder: String

    /** Set slide size for a presentation. */
    public var width: Int?

    /** Set slide size for a presentation. */
    public var height: Int?

    /** Set slide size for a presentation. */
    public var sizeType: String

    /** Set slide size for a presentation. */
    public var scaleType: String

    public init(name: String, password: String = "", storage: String = "", folder: String = "", width: Int? = nil, height: Int? = nil, sizeType: String = "", scaleType: String = "") {
        self.name = name
        self.password = password
        self.storage = storage
        self.folder = folder
        self.width = width
        self.height = height
        self.sizeType = sizeType
        self.scaleType = scaleType
    }
}

public struct PutSlidesViewPropertiesRequest: Codable {

    /** Update presentation document properties. */
    public var name: String

    /** Update presentation document properties. */
    public var dto: ViewProperties

    /** Update presentation document properties. */
    public var password: String

    /** Update presentation document properties. */
    public var folder: String

    /** Update presentation document properties. */
    public var storage: String

    public init(name: String, dto: ViewProperties, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutSubshapeSaveAsRequest: Codable {

    /** Render shape to specified picture format. */
    public var name: String

    /** Render shape to specified picture format. */
    public var slideIndex: Int

    /** Render shape to specified picture format. */
    public var path: String

    /** Render shape to specified picture format. */
    public var shapeIndex: Int

    /** Render shape to specified picture format. */
    public var format: String

    /** Render shape to specified picture format. */
    public var outPath: String

    /** Render shape to specified picture format. */
    public var options: IShapeExportOptions?

    /** Render shape to specified picture format. */
    public var password: String

    /** Render shape to specified picture format. */
    public var folder: String

    /** Render shape to specified picture format. */
    public var storage: String

    /** Render shape to specified picture format. */
    public var scaleX: Double?

    /** Render shape to specified picture format. */
    public var scaleY: Double?

    /** Render shape to specified picture format. */
    public var bounds: String

    /** Render shape to specified picture format. */
    public var fontsFolder: String

    public init(name: String, slideIndex: Int, path: String, shapeIndex: Int, format: String, outPath: String, options: IShapeExportOptions? = nil, password: String = "", folder: String = "", storage: String = "", scaleX: Double? = nil, scaleY: Double? = nil, bounds: String = "", fontsFolder: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.path = path
        self.shapeIndex = shapeIndex
        self.format = format
        self.outPath = outPath
        self.options = options
        self.password = password
        self.folder = folder
        self.storage = storage
        self.scaleX = scaleX
        self.scaleY = scaleY
        self.bounds = bounds
        self.fontsFolder = fontsFolder
    }
}

public struct PutUpdateNotesSlideRequest: Codable {

    /** Update notes slide properties. */
    public var name: String

    /** Update notes slide properties. */
    public var slideIndex: Int

    /** Update notes slide properties. */
    public var dto: NotesSlide

    /** Update notes slide properties. */
    public var password: String

    /** Update notes slide properties. */
    public var folder: String

    /** Update notes slide properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, dto: NotesSlide, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutUpdateNotesSlideShapeRequest: Codable {

    /** Update shape properties. */
    public var name: String

    /** Update shape properties. */
    public var slideIndex: Int

    /** Update shape properties. */
    public var shapeIndex: Int

    /** Update shape properties. */
    public var dto: ShapeBase

    /** Update shape properties. */
    public var password: String

    /** Update shape properties. */
    public var folder: String

    /** Update shape properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, dto: ShapeBase, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutUpdateNotesSlideShapeParagraphRequest: Codable {

    /** Update paragraph properties. */
    public var name: String

    /** Update paragraph properties. */
    public var slideIndex: Int

    /** Update paragraph properties. */
    public var shapeIndex: Int

    /** Update paragraph properties. */
    public var paragraphIndex: Int

    /** Update paragraph properties. */
    public var dto: Paragraph

    /** Update paragraph properties. */
    public var password: String

    /** Update paragraph properties. */
    public var folder: String

    /** Update paragraph properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, dto: Paragraph, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct PutUpdateNotesSlideShapePortionRequest: Codable {

    /** Update portion properties. */
    public var name: String

    /** Update portion properties. */
    public var slideIndex: Int

    /** Update portion properties. */
    public var shapeIndex: Int

    /** Update portion properties. */
    public var paragraphIndex: Int

    /** Update portion properties. */
    public var portionIndex: Int

    /** Update portion properties. */
    public var dto: Portion

    /** Update portion properties. */
    public var password: String

    /** Update portion properties. */
    public var folder: String

    /** Update portion properties. */
    public var storage: String

    public init(name: String, slideIndex: Int, shapeIndex: Int, paragraphIndex: Int, portionIndex: Int, dto: Portion, password: String = "", folder: String = "", storage: String = "") {
        self.name = name
        self.slideIndex = slideIndex
        self.shapeIndex = shapeIndex
        self.paragraphIndex = paragraphIndex
        self.portionIndex = portionIndex
        self.dto = dto
        self.password = password
        self.folder = folder
        self.storage = storage
    }
}

public struct StorageExistsRequest: Codable {

    /** Check if storage exists */
    public var storageName: String

    public init(storageName: String) {
        self.storageName = storageName
    }
}

public struct UploadFileRequest: Codable {

    /** Upload file */
    public var path: String

    /** Upload file */
    public var file: Data

    /** Upload file */
    public var storageName: String

    public init(path: String, file: Data, storageName: String = "") {
        self.path = path
        self.file = file
        self.storageName = storageName
    }
}
