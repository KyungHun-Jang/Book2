//
//  Book.swift
//  Book2
//
//  Created by ktds 10 on 13/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import UIKit
import Foundation

class Book: NSObject, NSCoding {
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.title, forKey: "title")
        aCoder.encode(self.writer, forKey: "writer")
        aCoder.encode(self.publisher, forKey: "publisher")
        aCoder.encode(self.cover, forKey: "cover")
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.title = aDecoder.decodeObject(forKey: "title") as! String
        self.writer = aDecoder.decodeObject(forKey: "writer") as! String
        self.publisher = aDecoder.decodeObject(forKey: "publisher") as! String
        self.cover = aDecoder.decodeObject(forKey: "cover") as? UIImage
    }
    
    
    
    
    var title:String
    var writer:String
    var publisher:String
    var cover:UIImage?
    
    init(title:String, writer:String, publisher:String, cover:UIImage?) {
        self.title = title
        self.writer = writer
        self.publisher = publisher
        self.cover = cover
    }
    
    convenience init(title:String) {
        self.init(title:title, writer:"", publisher:"", cover:nil)
    }
}
