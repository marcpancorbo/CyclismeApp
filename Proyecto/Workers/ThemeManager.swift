//
//  ThemeManager.swift
//  Proyecto
//
//  Created by Arnau Solans on 20/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

enum ThemeColor: Int {
    
    case `default`, white, gray, black, mandy, mineShaft, blueRibbon, green, graySoftSelectedCell, stucomOrange, stucomRed, stucomWhite, stucomWhiteBar, stucomOrangeTable, stucomOrangeShareCell, stucomPendingColor, stucomDoneColor, stucomOrangeShareSeparator, stucomSalmon, stucomDocScanned, stucomDoneTextColor, stucomDocPending
    
    //MARK: - Colors
    //colorLiteral(red: 0.99607843, green: 0.34901961, blue: 0.23137255, alpha: 1)
    
    var HCColor: UIColor {
        switch self {
        case .default:
            return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .blueRibbon:
            return #colorLiteral(red: 0, green: 0.4352941176, blue: 1, alpha: 1)
        case .white:
            return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .stucomWhite:
            return #colorLiteral(red: 0.9372549, green: 0.9372549, blue: 0.95686275, alpha: 1)
        case .stucomWhiteBar:
            return #colorLiteral(red: 0.96862745, green: 0.96862745, blue: 0.96862745, alpha: 1)
        case .gray:
            return #colorLiteral(red: 0.5019607843, green: 0.5019607843, blue: 0.5019607843, alpha: 1)
        case .black:
            return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        case .mandy:
            return #colorLiteral(red: 0.9176470588, green: 0.2588235294, blue: 0.4, alpha: 1)
        case .stucomOrange:
            return #colorLiteral(red: 0.9960784314, green: 0.3490196078, blue: 0.231372549, alpha: 1)
        case .stucomOrangeShareCell:
            return #colorLiteral(red: 0.9333333333, green: 0.3882352941, blue: 0.2705882353, alpha: 1)
        case .stucomOrangeShareSeparator:
            return #colorLiteral(red: 0.8814777732, green: 0.31504336, blue: 0.2130660415, alpha: 1)
        case .stucomOrangeTable:
            return #colorLiteral(red: 0.87058824, green: 0.50196078, blue: 0.40784314, alpha: 1)
        case .mineShaft:
            return #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        case .stucomRed:
            return #colorLiteral(red: 1, green: 0.14901961, blue: 0.14901961, alpha: 1)
        case .green:
            return #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        case .graySoftSelectedCell:
            return #colorLiteral(red: 0.9430092573, green: 0.9360255599, blue: 0.9483537078, alpha: 1)
        case .stucomPendingColor:
            return #colorLiteral(red: 0.6745098, green: 0.32156863, blue: 0.25490196, alpha: 1)
        case .stucomDoneColor:
            return #colorLiteral(red: 0.10980392, green: 0.54901961, blue: 0.0627451, alpha: 1)
        case .stucomDoneTextColor:
            return #colorLiteral(red: 0.10980392, green: 0.54901961, blue: 0.0627451, alpha: 1)
        case .stucomSalmon:
            return #colorLiteral(red: 0.97254902, green: 0.58431373, blue: 0.52156863, alpha: 1)
        case .stucomDocScanned:
            return #colorLiteral(red: 0, green: 0.4721733928, blue: 0, alpha: 1)
        case .stucomDocPending:
            return #colorLiteral(red: 0.8865985274, green: 0.01336954627, blue: 0, alpha: 1)
        }
    }
}

enum ThemeImage: String {
    
    case `default`, tabbar1_icon, tabbar2_icon
    
    //MARK: - Colors
    
    var HCImage: String {
        switch self {
        case .default:
            return "default"
        case .tabbar1_icon:
            return "search"
        case .tabbar2_icon:
            return "penguin"
            
        }
    }
}
