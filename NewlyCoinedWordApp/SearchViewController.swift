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
    
    let newlycoinedWordArray = ["삼귀자", "꾸안꾸", "이태백", "완내스", "머선129", "군싹", "whyrano", "쫌쫌따리", "재질", "ㅈㅂㅈㅇ", "알잘딱깔센", "남아공", "ㅋㅋ루삥뽕", "오놀아놈", "오저치고", "나심비", "슬세권", "스불재", "고스팅"]
    
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
    
    @IBAction func textfieldAction(_ sender: UITextField) {
        view.endEditing(true)
        
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
        } else if userTextField.text == "군싹" {
            resultLabel.text = "군침이 싹 도노의 줄임말"
        } else if userTextField.text == "whyrano" {
            resultLabel.text = "왜 이러나의 사투리"
        } else if userTextField.text == "쫌쫌따리" {
            resultLabel.text = "아주 조금씩 틈틈히"
        } else if userTextField.text == "재질" {
            resultLabel.text = "느낌, 부류를 대체하는 말"
        } else if userTextField.text == "ㅈㅂㅈㅇ" {
            resultLabel.text = "정보 좀요"
        } else if userTextField.text == "알잘딱깔센" {
            resultLabel.text = "알아서 잘 딱 깔끔하고 센스 있게"
        } else if userTextField.text == "남아공" {
            resultLabel.text = "남아서 공부나 해"
        } else if userTextField.text == "ㅋㅋ루삥뽕" {
            resultLabel.text = "주로 웃거나 비웃을 때 사용되는 의성어"
        } else if userTextField.text == "오놀아놈" {
            resultLabel.text = "오우 놀 줄 아는 놈인가"
        } else if userTextField.text == "오저치고" {
            resultLabel.text = "오늘 저녁 치킨 고?"
        } else if userTextField.text == "나심비" {
            resultLabel.text = "내가 만족하는 소비"
        } else if userTextField.text == "슬세권" {
            resultLabel.text = "슬리퍼를 신고 편안하게 나갈 수 있는 범위"
        } else if userTextField.text == "스불재" {
            resultLabel.text = "스스로 불러온 재앙"
        } else if userTextField.text == "고스팅" {
            resultLabel.text = "귀신처럼 잠수"
        } else {
            resultLabel.text = "결과를 찾을 수 없습니다."
        }
        
        tagButton1.setTitle(newlycoinedWordArray.randomElement(), for: .normal)
        tagButton2.setTitle(newlycoinedWordArray.randomElement(), for: .normal)
        tagButton3.setTitle(newlycoinedWordArray.randomElement(), for: .normal)
        tagButton4.setTitle(newlycoinedWordArray.randomElement(), for: .normal)

        view.endEditing(true)
    }
    
    @IBAction func buttonCliked(_ sender: UIButton) {
        userTextField.text = sender.currentTitle
        
    }
    
    
    
}
