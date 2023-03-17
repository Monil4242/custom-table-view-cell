//
//  ViewController.swift
//  custom table view cell
//
//  Created by monil sojitra on 08/02/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tableview: UITableView!
    var fgcolour = ["red","black","blue","orange","green","purple","yellow","brown","cyan"]
    var number = [1,2,3,4,5,6,7,8,9]
    var photo = [UIImage(named: "red"),UIImage(named: "black"),UIImage(named: "blue"),UIImage(named: "orange"),UIImage(named: "green"),UIImage(named: "purple"),UIImage(named: "yellow"),UIImage(named: "brown"),UIImage(named: "cyan")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fgcolour.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell2
        cell.lb1.text = "\(number[indexPath.row])"
        print(cell.lb1.text)
        cell.lb2.text = fgcolour[indexPath.row]
        cell.img.image = photo[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigation(data: number[indexPath.row], name: fgcolour[indexPath.row], img: photo[indexPath.row]!)
    }
    
    func navigation(data:Int,name:String,img:UIImage){
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigate.number = data
        navigate.name = name
        navigate.photo = img
        navigationController?.pushViewController(navigate, animated: true)
    }
    



}

