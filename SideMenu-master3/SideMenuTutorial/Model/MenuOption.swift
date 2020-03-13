//
//  MenuOption.swift
//  SideMenuTutorial
//
//  Created by Stephen Dowless on 12/12/18.
//  Copyright © 2018 Stephan Dowless. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Allergen
    case Settings
    case Absence
    case Meddelanden_feedback
    
    var description: String {
        switch self {
        case .Allergen: return "Allergener"
        case .Settings: return "Inställningar"
        case .Absence: return "Frånvaro"
        case .Meddelanden_feedback: return "Meddelanden_feedback"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Allergen: return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Settings: return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
        case .Absence: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        case .Meddelanden_feedback: return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        }
    }
}

