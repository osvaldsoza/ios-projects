//
//  ViewController.swift
//  AgePet
//
//  Created by Osvaldo Souza Ferreira on 29/05/25.
//

import UIKit

class ViewController: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor  = UIColor(_colorLiteralRed: 5/255, green: 8/255, blue: 78/255, alpha: 1)
        
        let backitem = UIBarButtonItem()
        backitem.title = "My Pet"
        navigationItem.backBarButtonItem = backitem
        
  }


}

