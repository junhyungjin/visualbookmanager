//
//  Book.swift
//  BookManager
//
//  Created by junhyungjin on 2016. 4. 11..
//  Copyright © 2016년 Hyung Jun Jun. All rights reserved.
//

import Foundation

class Book {
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint() {
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}