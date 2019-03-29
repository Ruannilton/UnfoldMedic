//
//  Anamnese.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Anamnese:DadosUsuario,Jsivis{
   
    var Data: Date
    var Local: String
    var QueixaPrincipal: String
    var Hma: String
    var InterSis: String
    
    init(nome: String,Data: Date, Local: String, QueixaPrincipal: String, Hma: String, InterSis: String) {
        self.Data = Data
        self.Local = Local
        self.QueixaPrincipal = QueixaPrincipal
        self.Hma = Hma
        self.InterSis = InterSis
        
    }
    func getNome () -> String {
        return QueixaPrincipal
    }
    func getStringDados()-> String{
        return("Data: \(self.Data) \n Interogatorio Sistematico:\n\(self.InterSis)")
        
        
    }
    
    init(json: [String: AnyObject]) {
            self.Data = json["Data"] as? Date ?? Date()
            self.Local = json["Local"] as? String ?? ""
            self.QueixaPrincipal = json["QueixaPrincipal"] as? String ?? ""
            self.Hma = json["Hma"] as? String ?? ""
            self.InterSis = json["InterSis"] as? String ?? ""
        }
    
    
    func GetJson() -> [String : Any] {
        
        
        return [
            "Data": "\(self.Data)",
            "Local": "\(self.Local)",
            "QueixaPrincipal": "\(self.QueixaPrincipal)",
            "Hma": "\(self.Hma)",
            "InterSis": "\(self.InterSis)"
            
        ]
    }

    
}
