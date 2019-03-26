//
//  Dados.swift
//  Unfold
//
//  Created by student on 22/03/19.
//  Copyright © 2019 SwellSoftware. All rights reserved.
//

import Foundation

class Dados{
    
    var ListaVacinas = [Vacinas]()
    var ListaCirurgias = [Cirurgias]()
    var ListaMedicamentos = [Medicamentos]()
    var ListaAlergias = [Alergias]()
    var ListaDoencasFisicas = [DoencasFisicas]()
    var ListaAnamnese = [Anamnese]()
    
    init(json: [String: AnyObject]){
        //Vacinas
        if let  vet = json["Vacinas"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Vacinas(json: jsonCel)
                self.ListaVacinas.append(x)
            }}
        
        //Cirurgias
        if let  vet = json["Cirurgias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Cirurgias(json: jsonCel)
                self.ListaCirurgias.append(x)
            }}
        
        //Medicamento
        if let  vet = json["Medicamentos"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Medicamentos(json: jsonCel)
                self.ListaMedicamentos.append(x)
            }}
        
        //Alergias
        if let  vet = json["Alergias"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Alergias(json: jsonCel)
                self.ListaAlergias.append(x)
            }}
        
        //Anamnese
        if let  vet = json["Anamnese"] as? [ [String: AnyObject] ] {
            for jsonCel in vet {
                let x = Anamnese(json: jsonCel)
                self.ListaAnamnese.append(x)
            }}
        
    }
}

