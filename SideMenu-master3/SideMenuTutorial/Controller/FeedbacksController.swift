//
//  SettingsController.swift
//  SideMenuTutorial
//
//  Created by Stephen Dowless on 2/23/19.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class FeedbacksController: UIViewController {
    
    var feddbacksView = UIView()
    
    // MARK: - Properties
    
    var username: String?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()


        configureUI()
        
    }
    
    // MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper Functions
    
    func configureUI() {
        view.backgroundColor = .white

        navigationController?.navigationBar.barTintColor = .red
        
        navigationItem.title = "Feedback"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
}
