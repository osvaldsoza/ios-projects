//
//  CatViewController.swift
//  AgePet
//
//  Created by Osvaldo Souza Ferreira on 29/05/25.
//

import UIKit

class CatViewController: UIViewController {
    
    @IBOutlet weak var textFieldAge: UITextField!
    
    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let screenWidth = UIScreen.main.bounds.width
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let viewWidth = stackView.bounds.width
        
        if viewWidth < 350 {
            stackView.spacing = 15
        } else {
            stackView.spacing = 40
        }
    }
    
  
    @IBAction func buttonFindOutAge(_ sender: UIButton) {
        
        let ageCatText = textFieldAge.text ?? ""
        
       // ifLet(ageCatText)
        
        guardLet(ageCatText)
        
        textFieldAge.text = ""
    }
    
    func ifLet(_ ageCatText: String){
        if let ageCat = Int(ageCatText){
            let ageHuman = PetAgeUtil.getPetAgeInHumanYears(ageCat, pet: .cat)
            labelResult.text = "Your cat's age in human years is: " + String(ageHuman) + " years."
        }else{
            labelResult.text = "Type a valid age!"
        }
    }
    
    func guardLet(_ ageCatText: String) {
        guard let ageCat = Int(ageCatText) else {
            labelResult.text = "Type a valid age!"
            //labelResult.textColor = .red
            return
        }
        
        let ageHuman = PetAgeUtil.getPetAgeInHumanYears(ageCat, pet: .cat)
        labelResult.text = "Your cat's age in human years is: " + String(ageHuman) + " years."
    }
}
