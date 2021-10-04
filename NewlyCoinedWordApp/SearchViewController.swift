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
    @IBOutlet var resultLabel: UILabel!
    
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
    
    @IBAction func tapGestureCliked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func searchButtonCliked(_ sender: UIButton) {
        if userTextField.text == "삼귀자" {
            resultLabel.text = "연애를 시작하기 전 썸단계!"
        } else if userTextField.text == "꾸안꾸" {
            resultLabel.text = "꾸민듯 안꾸민듯한 스타일"
        } else if userTextField.text == "이태백" {
            resultLabel.text = "이십대 태반이 백수"
        } else if userTextField.text == "완내스" {
            resultLabel.text = "완전 내 스타일"
        } else if userTextField.text == "머선129" {
            resultLabel.text = "무슨 일이냐의 사투리"
        }
        
        
        view.endEditing(true)
    }
    
    @IBAction func buttonCliked(_ sender: UIButton) {
        userTextField.text = sender.currentTitle
        
    }
    
    
    
}
