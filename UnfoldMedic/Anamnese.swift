//
//  Anamnese.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Anamnese{
    var Data: Date
    var Local: String
    var QueixaPrincipal: String
    var Hma: String
    var InterSis: String
    
init(json: [String: AnyObject]) {
        self.Data = json["Data"] as? Date ?? Date()
        self.Local = json["Local"] as? String ?? ""
        self.QueixaPrincipal = json["QueixaPrincipal"] as? String ?? ""
        self.Hma = json["Hma"] as? String ?? ""
        self.InterSis = json["InterSis"] as? String ?? ""
    }
    
}
