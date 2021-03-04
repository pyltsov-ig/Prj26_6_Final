//
//  ViewController.swift
//  Prj26_6_Final
//
//  Created by ИГОРЬ on 04/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    private(set) var myLabel: UILabel = {
        let myLabel = UILabel()
       // myLabel.center.x =
       // myLabel.center.y = 300
        myLabel.frame = CGRect(x: 100, y:500, width: 100, height: 60)
        myLabel.textColor = .white
        myLabel.text = "Я СМОГ !!!"
        return myLabel
    }()
    
    //@IBOutlet weak var newLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        
        
        view.addSubview(myLabel)
        
        let button = UIButton(frame: CGRect(x:200,y:200,width: 100, height: 50))
        button.backgroundColor = .red
        //button.setTitle("Кнопошка", forState: .normal)
        button.setTitle("Кнопка", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(button)
        
//        newLabel.frame = CGRect(x: 200, y: 300, width: 100, height: 50)
//        newLabel.text = "Hello"
//        newLabel.backgroundColor = .blue
//        self.view.addSubview(newLabel)
        
    }
    
    @objc func buttonAction() {
        self.myLabel.text = "НАЖАЛ"
    }


}

