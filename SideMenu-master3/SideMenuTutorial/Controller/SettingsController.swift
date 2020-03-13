//
//  SettingsController.swift
//  SideMenuTutorial
//
//  Created by Salah Eddin Kanaya on 2020-01-13.
//  Copyright © 2020 Stephan Dowless. All rights reserved.
//

import UIKit


class SettingsController: UITableViewController{
    
    var username: String?

    let cellId = "cellId"
    
     
    
//    let darkModeSwitch = UISwitch()
    
    var data = [
        ["Dark Mode", "Språk", "2","df"],
        ["Salah", "Alaa", "FAL"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .white
        
        configureUI()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
    }
    
    
    
    
    
    @objc func handleDismiss() {
          dismiss(animated: true, completion: nil)
      }
      
      // MARK: - Helper Functions
      
      func configureUI() {
          

          navigationController?.navigationBar.barTintColor = .red
          
          
          navigationItem.title = "Inställningar"
          
          navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        
      }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = "Almänt"
        label.backgroundColor = UIColor.darkGray
        return label
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count
    }
    
    
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let name = data[indexPath.section][indexPath.row]
        cell.textLabel?.text = name
        
        let switchObj = UISwitch(frame: CGRect(x: 1, y: 1, width: 20, height: 20))
        switchObj.addTarget(self, action: #selector(toggle(_:)), for: .valueChanged)
        cell.accessoryView = switchObj
        
        
       
        return cell
    }
    
   @objc func toggle(_ sender: UISwitch) {
      if sender.isOn == true {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .dark
                          
                          let controller = FeedbacksController()
                          controller.feddbacksView.overrideUserInterfaceStyle = .dark
              
                          let homcontroller = HomeController()
                          homcontroller.homView.overrideUserInterfaceStyle = .dark
                          
                          let absController = AbsenceController()
                          absController.absenceView.overrideUserInterfaceStyle = .dark
                          
                          let allcontroller = AllergenController()
                          allcontroller.AllergenView.overrideUserInterfaceStyle = .dark
                    
       
        } else {
            // Fallback on earlier versions
        }
         
      }
          if sender.isOn == false {
            if #available(iOS 13.0, *) {
               
                overrideUserInterfaceStyle = .light
                
                let controller = FeedbacksController()
                controller.feddbacksView.overrideUserInterfaceStyle = .light
    
                let homcontroller = HomeController()
                homcontroller.homView.overrideUserInterfaceStyle = .light
                
                let absController = AbsenceController()
                absController.absenceView.overrideUserInterfaceStyle = .light
                
                let allcontroller = AllergenController()
                allcontroller.AllergenView.overrideUserInterfaceStyle = .light
          
            } else {
                // Fallback on earlier versions
                
            }
            
    }
    
    }
    
    
    
    
    
    
    
    
    
}


