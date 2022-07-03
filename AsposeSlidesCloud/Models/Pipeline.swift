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


/** Represents pipeline for one input document. */
public class Pipeline: Codable {

    /** Get or sets input document. */
    public var input: Input?
    /** Get or sets list of tasks representing pipeline. */
    public var tasks: [Task]?

    func fillValues(_ source: [String:Any]) throws {
        let inputValue = source["input"]
        if inputValue != nil {
            let inputDictionaryValue = inputValue! as? [String:Any]
            if inputDictionaryValue != nil {
                let (inputInstance, error) = ClassRegistry.getClassFromDictionary(Input.self, inputDictionaryValue!)
                if error == nil && inputInstance != nil {
                    self.input = inputInstance! as? Input
                }
            }
        }
        let tasksValue = source["tasks"]
        if tasksValue != nil {
            var tasksArray: [Task] = []
            let tasksDictionaryValue = tasksValue! as? [Any]
            if tasksDictionaryValue != nil {
                tasksDictionaryValue!.forEach { tasksAnyItem in
                    let tasksItem = tasksAnyItem as? [String:Any]
                    var added = false
                    if tasksItem != nil {
                        let (tasksInstance, error) = ClassRegistry.getClassFromDictionary(Task.self, tasksItem!)
                        if error == nil && tasksInstance != nil {
                            let tasksArrayItem = tasksInstance! as? Task
                            if tasksArrayItem != nil {
                                tasksArray.append(tasksArrayItem!)
                                added = true
                            }
                        }
                    }
                    if !added {
                        tasksArray.append(Task())
                    }
                }
            }
            self.tasks = tasksArray
        }
    }

    public init(input: Input? = nil, tasks: [Task]? = nil) {
        self.input = input
        self.tasks = tasks
    }

    private enum CodingKeys: String, CodingKey {
        case input
        case tasks
    }

}

