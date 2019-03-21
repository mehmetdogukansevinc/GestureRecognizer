//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Mehmet Doğukan Sevinç on 21.03.2019.
//  Copyright © 2019 Mehmet Doğukan Sevinç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var isJamesOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ImageView.isUserInteractionEnabled = true//Kullanıcı resme tıklayabilir bu kod ile.
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePic))
        ImageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changePic() {
        if isJamesOn == true {
            ImageView.image = UIImage(named: "ham.jpeg")
            nameLabel.text = "Kirk Hammlet"
            isJamesOn = false
        }
        else if isJamesOn == false {
            ImageView.image = UIImage(named: "kirk.jpg")
            nameLabel.text = "James"
            isJamesOn = true
        }
    }


}

