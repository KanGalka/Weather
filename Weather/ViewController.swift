//
//  ViewController.swift
//  Weather
//
//  Created by Наталья Чушкина on 29.10.2019.
//  Copyright © 2019 Наталья Чушкина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//программная отрисовка
//    weak var button: UIButton = {
//        let b = UIButton (frame: .zerro)
//        b.backgroundColor .blue
//    }
    

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mySunrise: UIImageView!
    @IBOutlet weak var myNoon: UIImageView!
    @IBOutlet weak var mySunset: UIImageView!
    @IBOutlet weak var myNight: UIImageView!
    
    @IBOutlet weak var myButton: UIButton! {
        didSet {
                    myButton.setTitle("Change SUN", for: .normal) // .normal состояние кнопки
                    myButton.layer.cornerRadius = 10
                    myButton.backgroundColor = .orange
                    myButton.setTitleColor(.white, for: .normal)
                  }
    }
    
    
    @IBAction func myButtonTap(_ sender: UIButton) {
        switch myLabel.text {
        case "Defaul Text":
            myLabel.text = "Рассвет"
            mySunrise.tintColor = .red
            myNoon.tintColor = .blue
            mySunset.tintColor = .blue
            myNight.tintColor = .blue
        case "Рассвет":
            myLabel.text = "День"
            mySunrise.tintColor = .blue
            myNoon.tintColor = .red
            mySunset.tintColor = .blue
            myNight.tintColor = .blue

        case "День":
            myLabel.text = "Закат"
            mySunrise.tintColor = .blue
            myNoon.tintColor = .blue
            mySunset.tintColor = .red
            myNight.tintColor = .blue
            
        case "Закат":
            myLabel.text = "Ночь"
            mySunrise.tintColor = .blue
            myNoon.tintColor = .blue
            mySunset.tintColor = .blue
            myNight.tintColor = .red
            
        case "Ночь":
            myLabel.text = "Рассвет"
            mySunrise.tintColor = .red
            myNoon.tintColor = .blue
            mySunset.tintColor = .blue
            myNight.tintColor = .blue
            
        default:
            myLabel.text = "Defaul Text"
            mySunrise.tintColor = .blue
            myNoon.tintColor = .blue
            mySunset.tintColor = .blue
            myNight.tintColor = .blue
        }
        
        
    }
    
    override func viewDidLoad() {
        setLabelText()
    }
    
    func setLabelText () {
        myLabel.text = "Default Text"
    }
    
    
}

