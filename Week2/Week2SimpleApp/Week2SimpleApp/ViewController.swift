//
//  ViewController.swift
//  Week2SimpleApp
//
//  Created by Hao on 2022/1/15.
//

import UIKit

class ViewController: UIViewController {
    
    let text = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word",
    "This book is a treatise on the theory of ethics, very popular during the.",
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    let hexColor = [
        UIColor(rgb: 0xFF0000),
        UIColor(rgb: 0xFF7F00),
        UIColor(rgb: 0xF1C74C),
        UIColor(rgb: 0x70DB93),
        UIColor(rgb: 0x0000FF),
        UIColor(rgb: 0x4B0082),
        UIColor(rgb: 0x9400D3)
    ]

    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var arrayTextLabel: UILabel!
    
    @IBAction func randomArrayText(_ sender: Any) {
        let randomInt = Int.random(in: 0..<7)
        arrayTextLabel.text = text[randomInt]
        self.view.backgroundColor = hexColor[randomInt]
        self.clickButton.setTitleColor(hexColor[randomInt], for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayTextLabel.text = text[0]
    }


    
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
