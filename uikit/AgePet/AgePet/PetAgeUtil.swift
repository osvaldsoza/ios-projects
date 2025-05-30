//
//  OperationUtil.swift
//  AgePet
//
//  Created by Osvaldo Souza Ferreira on 29/05/25.
//

import Foundation

enum PetType {
    case cat
    case dog
}

class PetAgeUtil {
    static func getPetAgeInHumanYears(_ age: Int, pet: PetType) -> Int {
        guard age > 0 else { return 0 }
        
        let firstYear: Int
        let secondYear = 24
        
        switch pet {
        case .cat:
            firstYear = 15
        case .dog:
            firstYear = 20
        }
        
        if age == 1 {
            return firstYear
        } else if age == 2 {
            return secondYear
        } else{
            return  secondYear + ((age - 2) * 4)
        }
    }
}


