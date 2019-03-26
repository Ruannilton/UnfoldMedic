//
//  DoencasFisicas.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class DoencasFisicas{
    var Nome: String
    var Desc: String
    
   init(json: [String: AnyObject]) {
        self.Nome = json["Nome"] as? String ?? ""
        self.Desc = json["Desc"] as? String ?? ""
    }
    
}
