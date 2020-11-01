//
//  ViewController.swift
//  WithoutStoryBoard
//
//  Created by Seokhyun Kim on 2020-10-31.
//

import UIKit

class ViewController: UIViewController {
    
    //set and init label
    let titleLabel : UILabel = {
        var label = UILabel()
        label.text = "Main View"
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    let changeBtn : UIButton = {
        //type system is effect of button that when touch on button
        let btn = UIButton(type: .system)
        //.normal - status not tapped button
        btn.setTitle("Change background color", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.backgroundColor = .white
        btn.layer.cornerRadius = 5
        //content == text
        btn.contentEdgeInsets = UIEdgeInsets(top: 5, left: 20, bottom: 5, right: 20)
        btn.addTarget(self, action: #selector(changeBg), for: .touchUpInside)
        return btn
        
    }()
    
    var isBgBlue : Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isBgBlue = true
        // Do any additional setup after loading the view.
        //Color literal
        view.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        view.addSubview(titleLabel)
        
        //position of label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(changeBtn)
        
        //postion of button
        changeBtn.translatesAutoresizingMaskIntoConstraints = false
        changeBtn.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        changeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
    
    @objc fileprivate func changeBg() {
        if isBgBlue == true {
            view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            isBgBlue = false
        } else {
            view.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
            isBgBlue = true
        }
    }
    

}




