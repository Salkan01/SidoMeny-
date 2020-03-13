//
//  AllergenController.swift
//  SideMenuTutorial
//
//  Created by Salah Eddin Kanaya on 2020-01-13.
//  Copyright © 2020 Stephan Dowless. All rights reserved.
//

import UIKit





class AllergenController: UIViewController {
    
    var AllergenView = UIView()
    
    var username: String?
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.backgroundColor = .white
        
        
        configureUI()
        
        
        
        if let username = username {
                   print("Username is \(username)")
               } else {
                   print("Username not found..")
               }
    }
    
    
    
      @objc func handleDismiss() {
            dismiss(animated: true, completion: nil)
        }
        
        // MARK: - Helper Functions
        
        func configureUI() {
            

            navigationController?.navigationBar.barTintColor = .red
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationController?.title = "Allergener"
            
            
            
            
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        }
    
    
    
    
    
    
}

