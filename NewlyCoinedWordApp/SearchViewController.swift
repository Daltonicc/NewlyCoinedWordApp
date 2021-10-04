//
//  SearchViewController.swift
//  NewlyCoinedWordApp
//
//  Created by 박근보 on 2021/10/04.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet var uiStackview: UIStackView!
    @IBOutlet var emptyView: UIView!
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var tagButton1: UIButton!
    @IBOutlet var tagButton2: UIButton!
    @IBOutlet var tagButton3: UIButton!
    @IBOutlet var tagButton4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiStackview.layer.borderWidth = 2
        uiStackview.layer.borderColor = UIColor.black.cgColor
        
        buttonUISetting(tagButton1, "삼귀자")
        buttonUISetting(tagButton2, "꾸안꾸")
        buttonUISetting(tagButton3, "이태백")
        buttonUISetting(tagButton4, "완내스")
        
    }
    
    func buttonUISetting(_ btn: UIButton, _ title: String) {
        
        btn.setTitle(title, for: .normal)
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.black.cgColor
        btn.tintColor = .black
        
    }
}
