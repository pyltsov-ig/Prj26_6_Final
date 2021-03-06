//
//  ViewController.swift
//  Prj26_6_Final
//
//  Created by ИГОРЬ on 04/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let defaultValue = UserDefaults.standard
    let key:String = "ISDARK"
    
    // флаг для вида экрана. true - светлая тема, false - темная тема
    var isDark:Bool {
        set {
            defaultValue.setValue(newValue, forKey: key)
        }
        get {
            return defaultValue.bool(forKey: key)
        }
    }
    
    // label. ни зачем, просто так, чтобы было.
    private(set) var myLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.frame = CGRect(x: 0, y:100, width: 414, height: 60)
        myLabel.textColor = .black
        myLabel.textAlignment = .center
        //myLabel.font.
        myLabel.text = "26.6. ИТОГОВЫЙ ПРОЕКТ (Часть 1)"
        return myLabel
    }()
    
    //кнопку можно использовать, как альтернативный свичу переключатель
    private(set) var myButton: UIButton = {
        let myButton = UIButton(frame: CGRect(x: 157, y: 660, width: 100, height: 50))
        myButton.backgroundColor = .red
        myButton.layer.cornerRadius = myButton.frame.size.height / 2
        myButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        myButton.setTitle("Нажми", for: .normal)
        return myButton
    }()
    
    // свич
    private(set) var mySwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.frame = CGRect(x: 182, y: 600, width: 49, height: 31)
        mySwitch.addTarget(self, action: #selector(switchAction), for: .valueChanged)
        return mySwitch
    }()
    
    // картинка
    private(set) var imageOne: UIImageView = {
        let imageOne = UIImageView()
        return imageOne
    }()
    
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.view.addSubview(myLabel)
        self.view.addSubview(myButton)
        self.view.addSubview(mySwitch)
        self.view.addSubview(imageOne)
       
        mySwitch.isOn = isDark
        if isDark {
            setDarkScreen()
        } else {
            setLightScreen()
        }
    }
    
    @objc func buttonAction() {
        if mySwitch.isOn {
            mySwitch.isOn = false
        } else {
            mySwitch.isOn = true
        }
        switchAction()
    }
    
    @objc func switchAction() {
        isDark = mySwitch.isOn
        if isDark {
            setDarkScreen()
        } else {
            setLightScreen()
        }
    }
    
    func setLightScreen() {
        imageOne.frame = CGRect(x:84, y:270, width: 250, height: 250)
        imageOne.image = UIImage(named: "lemasque")
        view.backgroundColor = .white
        myButton.backgroundColor = .blue
        myLabel.textColor = .black
    }
    
    func setDarkScreen() {
        imageOne.frame = CGRect(x:23, y:270, width: 372, height: 250)
        imageOne.image = UIImage(named: "dreaminп")
        view.backgroundColor = .darkGray
        myButton.backgroundColor = .red
        myLabel.textColor = .white
    }


}

