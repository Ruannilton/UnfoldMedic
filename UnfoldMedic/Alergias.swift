//
//  Alergias.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Alergias {
    var Tipo: String
    var Desc: String
    var Causas = [String]()
    
    init(json: [String: AnyObject]){
        self.Desc =  json["Desc"] as? String ?? ""
        self.Tipo =  json["Tipo"] as? String ?? ""
      
        if let  vet = json["Causas"] as? [ String ] {
            for str in vet {
              //  let x = Alergias(json: jsonCel)
                self.Causas.append(str)
            }}
        
    }
}
