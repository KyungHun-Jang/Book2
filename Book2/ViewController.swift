//
//  ViewController.swift
//  Book2
//
//  Created by ktds 10 on 13/05/2019.
//  Copyright © 2019 kt ds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let book1 = Book(title: "Effective C++", writer: "마이어스", publisher: "프로텍", cover: UIImage(named: "Cover1"))
//
//        let book2 = Book(title: "열혈 C", writer: "제니퍼", publisher: "삼성", cover: UIImage(named: "Cover2"))
//
//        let book3 = Book(title: "재미있는 C#", writer: "마이클", publisher: "엘지", cover: UIImage(named: "Cover3"))
//
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        print("path = \(paths)")
        
        let documentDirectoryURL = paths.first!.appendingPathComponent("books.dat")
        
//        let books:NSArray = [book1,book2,book3]
        
//        let bookData = try! NSKeyedArchiver.archivedData(withRootObject: books, requiringSecureCoding: false)
        
//        do {
//            try bookData.write(to: documentDirectoryURL)
//        } catch {
//            print("Couldn't write to save file: " + error.localizedDescription)
//
//        }
        
        guard let bookData = try? Data(contentsOf: documentDirectoryURL) else {
            return
        }
        
        let books = try! NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(bookData) as? [Book]
        
        if let book = books {
            print("Book Count = \(book.count)")
            print("Book Title = \(book[0].title)")
        }
        
    }


}

