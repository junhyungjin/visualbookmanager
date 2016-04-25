//
//  ViewController.swift
//  VisualBookManager
//
//  Created by junhyungjin on 2016. 4. 19..
//  Copyright © 2016년 Hyung Jun Jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBook = BookManager()
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var countLabel:UILabel?
    
    @IBOutlet var nameTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!
    
    @IBAction func showAllAction(sender:AnyObject){
        outputTextView.text = myBook.showAllBook()
    }
    
    @IBAction func addBookAction(sender:AnyObject){
        let bookTemp = Book()
        bookTemp.name = nameTextField.text!
        bookTemp.genre = genreTextField.text!
        bookTemp.author = authorTextField.text!
        
        myBook.addBook(bookTemp)
        outputTextView.text = "\(nameTextField.text!) 도서가 등록되었습니다."
        
        countLabel!.text = "\(myBook.countBook())"
    }
    
    @IBAction func findBookAction(sender: AnyObject){
        let resultBook = myBook.findBook(nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        }else {
            outputTextView.text = "찾으시는 책이 없습니다"
        }
    }
    
    @IBAction func removeBookAction(sender: AnyObject){
        let deleteBook = myBook.removeBook(nameTextField.text!)
        
        if deleteBook == true {
            outputTextView.text = "\(nameTextField.text!) 도서가 삭제 됐습니다"
            countLabel!.text = "\(myBook.countBook())"
        } else {
            outputTextView.text = "삭제 하려는 책이 없습니다"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = Book()
        book1.name = "암호의 해석"
        book1.genre = "Science"
        book1.author = "루돌프 키펜한"
        
        let book2 = Book()
        book2.name = "알고리즘 문제해결"
        book2.genre = "Computer"
        book2.author = "구종만"
        
        let book3 = Book()
        book3.name = "죄와 벌"
        book3.genre = "고전"
        book3.author = "톨스토이"
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        
        countLabel!.text = "\(myBook.countBook())"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

