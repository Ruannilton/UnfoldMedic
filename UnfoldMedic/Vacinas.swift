//
//  Vacinas.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Vacinas{
    var Nome: String
    var Data: Date
    var Desc: String
    
init(json: [String: AnyObject]){
        self.Nome =  json["Nome"] as? String ?? ""
        self.Data =  json["Data"] as? Date ?? Date()
        self.Desc =  json["Desc"] as? String ?? ""
    }
    
  
}
