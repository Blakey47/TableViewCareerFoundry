//
//  DataItem.swift
//  TableViewCareerFoundry
//
//  Created by Darragh on 9/20/17.
//  Copyright © 2017 Darragh. All rights reserved.
//

import UIKit

class DataItem {
    var title: String
    var image: UIImage?
    
    init(title: String, imageName: String?) {
        self.title = title
        if let imageName = imageName {
            if let img = UIImage(named: imageName) {
                image = img
            }
        }
    }
}
