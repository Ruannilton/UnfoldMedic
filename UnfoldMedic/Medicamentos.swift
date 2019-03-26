//
//  Medicamentos.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Medicamentos {
    var Substancia: String
    var DataInicial: Data
    var DataFinal: Data
    var Desc: String
    
  init(json: [String: AnyObject]) {
        self.Substancia = json["Substancia"] as? String ?? ""
        self.DataFinal = json["DataFinal"] as? Data ?? Data()
        self.DataInicial = json["DataInicial"] as? Data ?? Data()
        self.Desc = json["Desc"] as? String ?? ""
    }
    
}
