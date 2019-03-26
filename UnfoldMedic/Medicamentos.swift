//
//  Medicamentos.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Medicamentos :DadosUsuario{
    var Nome:String
    var Substancia: String
    var DataInicial: Data
    var DataFinal: Data
    var Desc: String
    
    init(Nome:String,Substancia: String, DataInicial: Data, DataFinal: Data, Desc: String) {
        self.Substancia = Substancia
        self.DataFinal = DataFinal
        self.DataInicial = DataInicial
        self.Desc = Desc
        self.Nome = Nome
    }
    
    func getNome () -> String {
        return Nome
    }

  init(json: [String: AnyObject]) {
        self.Substancia = json["Substancia"] as? String ?? ""
        self.DataFinal = json["DataFinal"] as? Data ?? Data()
        self.DataInicial = json["DataInicial"] as? Data ?? Data()
        self.Desc = json["Desc"] as? String ?? ""
    }
    
}
