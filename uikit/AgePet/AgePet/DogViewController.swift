//
//  DogViewController.swift
//  AgePet
//
//  Created by Osvaldo Souza Ferreira on 29/05/25.
//

import UIKit

class DogViewController: UIViewController {

    @IBOutlet weak var textFieldDogAge: UITextField!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var labelResultAge: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    @IBAction func buttonFindOutHumanAge(_ sender: UIButton) {
        
        let ageDogText = textFieldDogAge.text ?? ""
        
        if let ageDog = Int(ageDogText) {
            let ageHuman = PetAgeUtil.getPetAgeInHumanYears(ageDog, pet: .dog)
            labelResultAge.text = "Your dog's age in human years is: " + String(ageHuman) + " years."
        }else{
            labelResultAge.text = "Type a valid age!"
        }
        
        textFieldDogAge.text = ""
    }
}
