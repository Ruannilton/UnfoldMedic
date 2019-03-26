//
//  Cirurgias .swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class  Cirurgias :DadosUsuario{
    var Tipo: String
    var Local: String
    var Anestesia: Bool
    var Desc: String
    
    init(Tipo: String, Local: String, Anestesia: Bool, Desc: String) {
        self.Tipo = Tipo
        self.Local = Local
        self.Anestesia = Anestesia
        self.Desc = Desc
    }
}
