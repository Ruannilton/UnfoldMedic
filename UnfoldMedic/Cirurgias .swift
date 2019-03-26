//
//  Cirurgias .swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class  Cirurgias {
    var Tipo: String
    var Local: String
    var Anestesia: Bool
    var Desc: String
    
    init(json: [String: AnyObject]){
        self.Tipo = json["Tipo"] as? String ?? ""
        self.Local = json["Local"] as? String ?? ""
        self.Anestesia = json["Anestesia"] as? Bool ?? true
        self.Desc = json["Desc"] as? String ?? ""
    }
}
