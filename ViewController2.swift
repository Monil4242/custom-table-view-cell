//
//  ViewController2.swift
//  custom table view cell
//
//  Created by monil sojitra on 09/02/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    var number = Int()
    var name = String()
    var photo = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        lb1.text = "\(number)"
        lb2.text = name
        img.image = photo

    }
    

 

}
