//
//  Data.swift
//  XMLParser
//
//  Created by Yudhvir Raj on 2017-12-07.
//  Copyright © 2017 Yudhvir Raj. All rights reserved.
//

import Foundation
import EVReflection


class Data : EVObject {
    var images: [Cat]?
}

class Response: EVObject {
    var data: Data?
}
