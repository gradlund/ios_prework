//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Grace Radlund on 8/14/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //changing the background color
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        func changeColor() -> UIColor{
            let red = CGFloat.random(in: 0...5)
            let green = CGFloat.random(in: 0...25)
            let blue = CGFloat.random(in: 0...1)
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
            
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        }
    
    @IBOutlet weak var likes: UILabel!
    var likeCount = 0;
    
    //incrementing the likes label
    @IBAction func addLike(_ sender: UIButton) {
        likeCount += 1
        likes.text = String(likeCount)
    }
    //decrementing the likes label
    @IBAction func subtractLike(_ sender: UIButton) {
        likeCount -= 1
        likes.text = String(likeCount)
    }
}

