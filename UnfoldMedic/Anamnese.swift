//
//  Anamnese.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Anamnese:DadosUsuario{
    var Data: String
    var Local: String
    var QueixaPrincipal: String
    var Hma: String
    var InterSis: String
    
    init(Data: String, Local: String, QueixaPrincipal: String, Hma: String, InterSis: String) {
        self.Data = Data
        self.Local = Local
        self.QueixaPrincipal = QueixaPrincipal
        self.Hma = Hma
        self.InterSis = InterSis
    }
    
}
